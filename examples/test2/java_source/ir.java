import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

abstract class ir
  implements jg
{
  private String jdField_a_of_type_JavaLangString;
  
  public ir(iq paramIq, String paramString)
  {
    jdField_a_of_type_JavaLangString = paramString;
  }
  
  protected final fw a(jf paramJf)
    throws IOException
  {
    String str = null;
    Object localObject1 = paramJf.a().iterator();
    int i = 0;
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (je)((Iterator)localObject1).next();
      if ((jdField_a_of_type_JavaLangString.equals("Proc-Type")) && (b.equals("4,ENCRYPTED")))
      {
        i = 1;
      }
      else
      {
        if (!jdField_a_of_type_JavaLangString.equals("DEK-Info")) {
          break label260;
        }
        str = b;
      }
    }
    label260:
    for (;;)
    {
      break;
      localObject1 = paramJf.a();
      paramJf = (jf)localObject1;
      if (i != 0)
      {
        if (iq.a(jdField_a_of_type_Iq) == null) {
          throw new iu("No password finder specified, but a password is required");
        }
        paramJf = iq.a(jdField_a_of_type_Iq).a();
        if (paramJf == null) {
          throw new iu("Password is null, but a password is required");
        }
        localObject2 = new StringTokenizer(str, ",");
        str = ((StringTokenizer)localObject2).nextToken();
        localObject2 = jb.a(((StringTokenizer)localObject2).nextToken());
        paramJf = iq.a(jdField_a_of_type_JavaLangString, (byte[])localObject1, paramJf, str, (byte[])localObject2);
      }
      try
      {
        paramJf = fw.a(fv.a(paramJf));
        return paramJf;
      }
      catch (IOException paramJf)
      {
        if (i != 0) {
          throw new ip("exception decoding - please check password and data.", paramJf);
        }
        throw new ip(paramJf.getMessage(), paramJf);
      }
      catch (IllegalArgumentException paramJf)
      {
        if (i != 0) {
          throw new ip("exception decoding - please check password and data.", paramJf);
        }
        throw new ip(paramJf.getMessage(), paramJf);
      }
    }
  }
}
