#include <iostream>

using namespace std;

void swapX(int, int, int, int);
bool isDangerous(int, int, int, int);
int sum(int);

int main()
{
    //swapX(0, 1, 8, 3);   

    //cout << isDangerous(3, 3, 4, 4) << endl;
    //cout << isDangerous(3, 4, 3, 5) << endl;
    //cout << isDangerous(1, 7, 2, 4) << endl;

    //cout<< sum(5);

    return 0;
}


//(x1,y1) - bishop; (x2, y2) - queen
bool isDangerous(int x1, int y1, int x2, int y2) {
    bool flag = false;

    if (abs(x1 - x2) == abs(y1 - y2)) {
        cout << "queen and bishop bite\n";
        flag = true;
    }

    if ((x1 == x2) || (y1 == y2)) {
        cout << "queen bites\n";
        flag = true;
    }

    return flag;
}

//x1 < x2 > x3 > x4
void swapX(int x1, int x2, int x3, int x4) {

    if (x2 < x3) swap(x2, x3);
    if (x3 < x4) swap(x3, x4);
    if (x1 > x2) swap(x1, x2);

    cout << x1 << " " << x2 << " " << x3 << " " << x4 << endl;
}

int sum(int n) {
    return 15 * n * (n + 1);
}
