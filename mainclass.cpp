#include "mainclass.h"
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

MainClass::MainClass(QObject *parent) : QObject(parent){
   srand (time(NULL));
   counter = 0;
   mouv = false;
   NewGame();
   hol;
}

void MainClass::NewGame(){
    for(int i = 0; i<4; i++){
        for(int j = 0; j<4; j++){
            matrix[i][j]=0;
            emit MatrixChanged();
            emit ColorChanged();
        }
    }
    Add_Number();
}

void MainClass::key_up(){
    for (int times=0;times<4;times++){
        CombineRow(0,1);
        CombineRow(1,2);
        CombineRow(2,3);
    }
    Key_Pressed();
    emit MatrixChanged();
    emit ColorChanged();
}

void MainClass::key_down(){
    for (int times=0;times<4;times++){
        CombineRow(3,2);
        CombineRow(2,1);
        CombineRow(1,0);
    }
    Key_Pressed();
    emit MatrixChanged();
    emit ColorChanged();
}

void MainClass::key_left(){
    for (int times=0;times<4;times++){
        CombineColumn(0,1);
        CombineColumn(1,2);
        CombineColumn(2,3);
    }
    Key_Pressed();
    emit MatrixChanged();
    emit ColorChanged();
}

void MainClass::key_right(){
    for (int times=0;times<4;times++){
        CombineColumn(3,2);
        CombineColumn(2,1);
        CombineColumn(1,0);
    }
    Key_Pressed();
    emit MatrixChanged();
    emit ColorChanged();
}

void MainClass::CombineRow(int a, int b){
    for(int j = 0; j<4; j++){
        if ( matrix[b][j] != 0 ){
            if (matrix [a][j] == matrix[b][j] || matrix [a][j] == 0){
                matrix[a][j] += matrix [b][j];
                matrix[b][j] = 0;
            }
        }
    }
}

void MainClass::CombineColumn(int a, int b){
    for(int i = 0; i<4; i++){
        if ( matrix[i][b] != 0 ){
            if (matrix [i][a] == matrix[i][b] || matrix [i][a] == 0){
                matrix[i][a] += matrix [i][b];
                matrix[i][b] = 0;
            }
        }
    }
}

void MainClass::Key_Pressed(){
    Add_Number();
}

int MainClass::CountFreeSpace(){
    int count=0;
    for(int i = 0; i<4; i++){
        for(int j = 0; j<4; j++){
            if(matrix[i][j]==0){
                count++;
            }
        }
    }
    return count;
}

void MainClass::Add_Number(){
    int Number = (rand()%2+1)*2;
    int count = CountFreeSpace();
    if (count != 0){
        int pos = rand()%count;
        count=0;
        for(int i = 0; i<4; i++){
            for(int j = 0; j<4; j++){
                if(matrix[i][j]==0){
                    if (count == pos){
                        matrix[i][j] = Number;
                    }
                    count++;
                }
            }
        }
    }
}

QList<QString> MainClass::ReadMatrix(){
    QString space = " ";
    QList<QString> B;
    for(int i = 0; i<4; i++){
        for(int j = 0; j<4; j++){
            if (matrix[i][j]==0){B.append(space);}
            else{
            B.append(QString::number(matrix[i][j]));
            }
        }
    }
    return B;
}

QList<QString> MainClass::ReadColor(){
    QList<QString> Color;
    int indice;
    for(int i = 0; i<4; i++){
        for(int j = 0; j<4; j++){
            if (matrix[i][j] == 0 ){indice=0;}
            else{indice = log2(matrix[i][j]);}
            switch(indice) {
            case 0 :
                Color.append("#FAFAFA");
                break;
            case 1 :
                Color.append("#F2F2F2");
                break;
            case 2 :
                Color.append("#E6E6E6");
                break;
            case 3 :
                Color.append("#D8D8D8");
                break;
            case 4 :
                Color.append("#BDBDBD");
                break;
            case 5 :
                Color.append("#A4A4A4");
                break;
            case 6 :
                Color.append("#848484");
                break;
            case 7 :
                Color.append("#6E6E6E");
                break;
            case 8 :
                Color.append("#585858");
                break;
            case 9 :
                Color.append("#424242");
                break;
            case 10 :
                Color.append("#2E2E2E");
                break;
            case 11 :
                Color.append("#1C1C1C");
                break;
            }
        }
    }
    return Color;
}

void MainClass::PrintMatrix(){
    std::cout << "______";
    std::cout<< std::endl;
    for (int i = 0 ; i<4 ; i++){
        for (int j = 0; j<4 ; j++){
            std::cout<< matrix[i][j]<< " ";
        }
        std::cout<< std::endl;
    }
}
