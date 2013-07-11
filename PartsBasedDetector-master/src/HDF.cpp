#include <opencv2/core/core.hpp>
#include <hdf5.h>

#include "../include/HDF.hpp"
#include <iostream>
using namespace std;


HDF::HDF(int M, int N, int initialSize)
{
    this->filledOffset=0;
    this->prevRows=0;
    this->M = M;
    this->N = N;
    string filename("tmp.h5");
    datasetname = "scores";
    file = H5Fcreate(filename.c_str(), H5F_ACC_TRUNC, H5P_DEFAULT, H5P_DEFAULT);
    size_ = 0;
    rank = 2;
    data_size[0] = 1;
    data_size[1] = initialSize;
    int data[data_size[0]][data_size[1]];
    for(int i = 0; i < data_size[0]; i++)
        for(int j = 0; j < data_size[1]; j++)
            data[i][j] = 0;
	
    hsize_t maxdims[2] = {H5S_UNLIMITED, H5S_UNLIMITED};
    hsize_t chunk_dims[2] = {2, 5};

    hid_t dataspace = H5Screate_simple (rank, data_size, maxdims);
    hid_t prop = H5Pcreate (H5P_DATASET_CREATE);
    herr_t status = H5Pset_chunk (prop, rank, chunk_dims);

    dataset = H5Dcreate2 (file, datasetname.c_str(), H5T_NATIVE_INT, dataspace,
                          H5P_DEFAULT, prop, H5P_DEFAULT);
    status = H5Dwrite(dataset, H5T_NATIVE_INT, H5S_ALL, H5S_ALL,
                       H5P_DEFAULT, data);
}

HDF::~HDF()
{
    H5Fclose(file);
}



int HDF::populateFile(int data[], int arrsize)
{
  hsize_t s[2];
  s[1] = prevRows + arrsize;
  s[0] = 1;
  hsize_t dimsext[2] = {1, arrsize};
  hsize_t offset[2];
  H5Dset_extent (dataset, s);
  hid_t filespace = H5Dget_space (dataset);
  offset[0] = filledOffset;
  offset[1] = 0;
  herr_t status = H5Sselect_hyperslab (filespace, H5S_SELECT_SET, offset, NULL,dimsext, NULL);  

  /* Define memory space */
  hid_t memspace = H5Screate_simple (rank, dimsext, NULL); 
  
  /* Write the data to the extended portion of dataset  */
  status = H5Dwrite (dataset, H5T_NATIVE_INT, memspace, filespace,
		  H5P_DEFAULT, data);
  filledOffset += arrsize;
}