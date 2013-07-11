#ifndef HDF_HPP_
#define HDF_HPP_

#include <hdf5.h>
#include <map>

#include "types.hpp"

class HDF
{
    private:
        struct size_s
        {
            int x;
            int y;
        };

        int size_;
        int rank;
        int M;
        int N;
        std::map<int, size_s> sizeid;
        hid_t file, dataset;
        hsize_t data_size[2];
        std::string datasetname;
        int prevRows;
        int filledOffset;

    public:
        HDF();
        HDF(int M, int N, int initialSize);
        virtual ~HDF();
        int populateFile(int data[],int arrsize);
        int size();
        int rowSize(int n);
        vectorMat scores(int n);
};

#endif //IFDEF