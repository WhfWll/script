.class public final Lex;
.super Lev;


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/png"

    aput-object v2, v0, v1

    sput-object v0, Lex;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lev;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    invoke-super {p0, p1}, Lev;->a(Landroid/os/Message;)V

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    goto :goto_8

    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_8

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method

.method protected final a(Ljava/lang/Throwable;[B)V
    .registers 6

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lex;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lex;->b(Landroid/os/Message;)V

    return-void
.end method

.method final a(Lorg/apache/http/HttpResponse;)V
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    array-length v3, v0

    if-eq v3, v1, :cond_1f

    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string v3, "None, or more than one, Content-Type Header found!"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lex;->a(Ljava/lang/Throwable;[B)V

    :goto_1e
    return-void

    :cond_1f
    aget-object v6, v0, v4

    sget-object v7, Lex;->a:[Ljava/lang/String;

    array-length v8, v7

    move v3, v4

    move v0, v4

    :goto_26
    if-ge v3, v8, :cond_38

    aget-object v9, v7, v3

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    move v0, v1

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_38
    if-nez v0, :cond_49

    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string v3, "Content-Type not allowed!"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lex;->a(Ljava/lang/Throwable;[B)V

    goto :goto_1e

    :cond_49
    :try_start_49
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_8e

    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v3}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    :goto_54
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_57} :catch_71

    move-result-object v0

    :goto_58
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_77

    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lex;->a(Ljava/lang/Throwable;[B)V

    goto :goto_1e

    :catch_71
    move-exception v0

    invoke-virtual {p0, v0, v2}, Lex;->a(Ljava/lang/Throwable;[B)V

    move-object v0, v2

    goto :goto_58

    :cond_77
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    aput-object v0, v3, v1

    invoke-virtual {p0, v4, v3}, Lex;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lex;->b(Landroid/os/Message;)V

    goto :goto_1e

    :cond_8e
    move-object v0, v2

    goto :goto_54
.end method
