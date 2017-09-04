 enum dx
{
  static
  {
    a = new dx("imei", 1);
    b = new dx("android_id", 2);
    c = new dx("none", 3);
    d = new dx("a", 4);
    dx localDx = e;
    localDx = a;
    localDx = b;
    localDx = c;
    localDx = d;
  }
  
  private dx() {}
}
