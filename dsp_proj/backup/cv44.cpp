



//#include "opencv.hpp"
#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;

int main(void)
{
    Mat srcImage = imread("taran.jpg", IMREAD_GRAYSCALE);
    if(srcImage.empty())
        return -1;
    imshow("srcImage", srcImage);

    int ksize = 3;
    int ddepth = CV_32F;
    Mat dstGx, dstGy;
    Sobel(srcImage, dstGx, ddepth, 1, 0, ksize);
    Sobel(srcImage, dstGy, ddepth, 0, 1, ksize);

    int dtype = CV_8U;
    Mat dstImageGx;
    normalize(abs(dstGx), dstImageGx, 0, 255, NORM_MINMAX, dtype);

    imshow("dstImageGx", dstImageGx);

    Mat dstImageGy;
    normalize(abs(dstGy), dstImageGy, 0, 255, NORM_MINMAX, dtype);
    imshow("dstImageGy", dstImageGy);

    Mat dstMag;
    magnitude(dstGx, dstGy, dstMag);
    Mat dstImageGxy;
    normalize(dstMag, dstImageGxy, 0, 255, NORM_MINMAX, dtype);

    imshow("dstImageGxy", dstImageGxy);

    waitKey();

    return 0;

}
