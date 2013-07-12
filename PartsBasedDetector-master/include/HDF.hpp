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
        int maxCols;
        vectorMat scores_;

    public:
        HDF();
        HDF(int M, int N, int initialSize);
        virtual ~HDF();
        int populateFile(cv::Mat response);
        int size();
        int rowSize();
        vectorMat& scores(int n);

        //scores[n]
        vectorMat& operator[] (int n);
};

#endif //IFDEF