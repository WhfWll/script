 enum cr
{
  static
  {
    a = new cr("SHA1", 1);
    cr localCr = b;
    localCr = a;
  }
  
  private cr() {}
}
