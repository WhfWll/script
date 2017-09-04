import java.util.concurrent.CountDownLatch;

final class cu
  implements Runnable
{
  cu(ct paramCt, cx paramCx, CountDownLatch paramCountDownLatch) {}
  
  public final void run()
  {
    cx.a(jdField_a_of_type_Cx, ct.a(jdField_a_of_type_Ct), ct.b(jdField_a_of_type_Ct));
    jdField_a_of_type_Cx.a(ct.c(jdField_a_of_type_Ct), ct.d(jdField_a_of_type_Ct));
    jdField_a_of_type_JavaUtilConcurrentCountDownLatch.countDown();
  }
}
