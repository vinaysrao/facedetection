#include "hdf5.h"

#define FILENAME    "extend.h5"
#define DATASETNAME "ExtendibleArray"
#define RANK         2
#define SIZE 20
#define TIMES 10

#include <math.h>
#include <iostream>

using namespace std;

int
main (void)
{
    hid_t        file;                          /* handles */
    hid_t        dataspace, dataset;
    hid_t        filespace, memspace;
    hid_t        prop;

    hsize_t      dims[2]  = {1, SIZE};           /* dataset dimensions at creation time */     
    hsize_t      maxdims[2] = {H5S_UNLIMITED, H5S_UNLIMITED};
    herr_t       status;
//     hsize_t      chunk_dims[2] = {int(sqrt(SIZE)), int(sqrt(SIZE))};
    hsize_t chunk_dims[2] = {1, SIZE};
    int data[1][SIZE];
    for(int i = 0; i < 1; i++)
        for(int j = 0; j < SIZE; j++)
            data[i][j] = -1;

    /* Variables used in extending and writing to the extended portion of dataset */
    hsize_t      size[2];
    hsize_t      offset[2];
    hsize_t      dimsext[2] = {1, SIZE};         /* extend dimensions */
//     int          dataext[7][3] = { {2, 3, 4}, 
//                                    {2, 3, 4}, 
//                                    {2, 3, 4}, 
//                                    {2, 3, 4}, 
//                                    {2, 3, 4}, 
//                                    {2, 3, 4}, 
//                                    {2, 3, 4} };

    /* Variables used in reading data back */
    hsize_t      chunk_dimsr[2];
    hsize_t      dimsr[2] = {1, SIZE};
    hsize_t      i, j;
    int          rdata[1][SIZE];
    herr_t       status_n;
    int          rank, rank_chunk;

    /* Create the data space with unlimited dimensions. */
    dataspace = H5Screate_simple (RANK, dims, maxdims); 

    /* Create a new file. If file exists its contents will be overwritten. */
    file = H5Fcreate (FILENAME, H5F_ACC_TRUNC, H5P_DEFAULT, H5P_DEFAULT);

    /* Modify dataset creation properties, i.e. enable chunking  */
    prop = H5Pcreate (H5P_DATASET_CREATE);
    status = H5Pset_chunk (prop, RANK, chunk_dims);

    /* Create a new dataset within the file using chunk 
       creation properties.  */
    dataset = H5Dcreate2 (file, DATASETNAME, H5T_NATIVE_INT, dataspace,
                         H5P_DEFAULT, prop, H5P_DEFAULT);

    /* Write data to dataset */
    status = H5Dwrite (dataset, H5T_NATIVE_INT, H5S_ALL, H5S_ALL,
                       H5P_DEFAULT, data);

//     size[0] = dimsext[0];
    size[0] = dimsext[0];
    size[1] = dimsext[1];

    for(int i = 0; i < (TIMES - 1); i++)
    {
        /* Extend the dataset. Dataset becomes 10 x 3  */
        size[0] = size[0]+ dimsext[0];
//         size[1] = size[1];
        status = H5Dset_extent (dataset, size);

        /* Select a hyperslab in extended portion of dataset  */
        filespace = H5Dget_space (dataset);
        offset[0] = i + 1;
        offset[1] = 0;
        status = H5Sselect_hyperslab (filespace, H5S_SELECT_SET, offset, NULL,
                                    dimsext, NULL);  
 
        /* Define memory space */
        memspace = H5Screate_simple (RANK, dimsext, NULL); 
        for(int x = 0; x < 1; x++)
            for(int y = 0; y < SIZE; y++)
                data[x][y] = i;
        /* Write the data to the extended portion of dataset  */
        status = H5Dwrite (dataset, H5T_NATIVE_INT, memspace, filespace,
                        H5P_DEFAULT, data);

    }
    /* Close resources */
    status = H5Dclose (dataset);
    status = H5Pclose (prop);
    status = H5Sclose (dataspace);
    status = H5Sclose (memspace);
    status = H5Sclose (filespace);
    status = H5Fclose (file);
    /********************************************
     * Re-open the file and read the data back. *
     ********************************************/

    file = H5Fopen (FILENAME, H5F_ACC_RDONLY, H5P_DEFAULT);
    dataset = H5Dopen2 (file, DATASETNAME, H5P_DEFAULT);

    filespace = H5Dget_space (dataset);
    offset[0] = 3;
    offset[1] = 0;
    status = H5Sselect_hyperslab (filespace, H5S_SELECT_SET, offset, NULL,
                                  dimsext, NULL);  
//     rank = H5Sget_simple_extent_ndims (filespace);
//     status_n = H5Sget_simple_extent_dims (filespace, dimsr, NULL);
//     cout << "DIMS " << dimsr[0] << " : " << dimsr[1] << endl;
//     dimsr[0] = 1; dimsr[1] = SIZE;

//     prop = H5Dget_create_plist (dataset);

//     if (H5D_CHUNKED == H5Pget_layout (prop)) 
//        rank_chunk = H5Pget_chunk (prop, rank, chunk_dimsr);

    memspace = H5Screate_simple (RANK, dimsr, NULL);
    status = H5Dread (dataset, H5T_NATIVE_INT, memspace, filespace,
                      H5P_DEFAULT, rdata);

    printf("\n");
    printf("Dataset: \n");
    for (j = 0; j < dimsr[0]; j++)
    {
       for (i = 0; i < dimsr[1]; i++)
           printf("%d ", rdata[j][i]);
       printf("\n");
    }
    cout << "Exited" << endl;

//     status = H5Pclose (prop);
    status = H5Dclose (dataset);
    status = H5Sclose (filespace);
    status = H5Sclose (memspace);
    status = H5Fclose (file);
}
