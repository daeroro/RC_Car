



//#include "opencv.hpp"
#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;

int main(void)
{
    Mat srcImage = imread("Gna.jpg",IMREAD_GRAYSCALE);
    if(srcImage.empty())
        return -1;

    Mat dstImage1;
    double th1 = threshold(srcImage, dstImage1, 150, 255, THRESH_BINARY);
    cout << "th1 = " << th1 << endl;

    Mat dstImage2;
    double th2 = threshold(srcImage, dstImage2, 150, 255, THRESH_BINARY + THRESH_OTSU);
    cout << "th2 = " << th2 << endl;

    imshow("dstImage1", dstImage1);
    imshow("dstImage2", dstImage2);
    waitKey();


    return 0;
}
