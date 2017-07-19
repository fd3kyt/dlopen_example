// need to be C in order to use dlopen()
extern "C"{
int plus_one(int num){
  return num + 1;
}
}
