#include <string>
#include "stdlib.h"

#include "../includes/waiter.h"
#include "../includes/externs.h"

using namespace std;
ORDER temp;
int check = 0;
int checkio;

Waiter::Waiter(int id,std::string filename):id(id),myIO(filename){
}

Waiter::~Waiter()
{
}

//gets next Order(s) from file_IO
int Waiter::getNext(ORDER &anOrder){

	checkio = myIO.getNext(anOrder);

	if(checkio == SUCCESS){
		return SUCCESS;
	}

	else{
		return FAIL;
	}
}

void Waiter::beWaiter() {
	//get the order


	while(check == 0){	//check if next gives me success
		unique_lock<mutex> lck(mutex_order_inQ);

		//puts order in q and then signals with cv
		check = getNext(temp);
		if(check != 0){
			break;
		}
		order_in_Q.push(temp);

	}

	//tell bakers that waiter is done

	//lock_guard<mutex> lck(mutex_order_inQ);
	unique_lock<mutex> lck(mutex_order_inQ);


	b_WaiterIsFinished = true;
	cout << "Waiter " << id << " is done" << endl;
	cout << "Queue Size " << order_in_Q.size() << endl;
	cv_order_inQ.notify_all();



}

