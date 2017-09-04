.class public Lcn/dbox/core/d/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/d/k$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ImageGetFromHttp"

.field private static b:Lcn/dbox/core/h/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/d/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/d/k;->b:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 24
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 25
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 28
    :try_start_b
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 30
    const/16 v5, 0xc8

    if-eq v2, v5, :cond_47

    .line 31
    sget-object v1, Lcn/dbox/core/d/k;->b:Lcn/dbox/core/h/d;

    const-string v5, "ImageGetFromHttp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " while retrieving bitmap from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcn/dbox/core/h/d;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_3f} :catch_76
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_3f} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3f} :catch_b5
    .catchall {:try_start_b .. :try_end_3f} :catchall_c6

    .line 60
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 62
    :goto_46
    return-object v0

    .line 35
    :cond_47
    :try_start_47
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_76
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_4a} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_b5
    .catchall {:try_start_47 .. :try_end_4a} :catchall_c6

    move-result-object v5

    .line 36
    if-eqz v5, :cond_87

    .line 39
    :try_start_4d
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_6b

    move-result-object v2

    .line 40
    :try_start_51
    new-instance v1, Lcn/dbox/core/d/k$a;

    invoke-direct {v1, v2}, Lcn/dbox/core/d/k$a;-><init>(Ljava/io/InputStream;)V

    .line 41
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_cf

    move-result-object v1

    .line 43
    if-eqz v2, :cond_5f

    .line 44
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 47
    :cond_5f
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_62} :catch_76
    .catch Ljava/lang/IllegalStateException; {:try_start_5c .. :try_end_62} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_62} :catch_b5
    .catchall {:try_start_5c .. :try_end_62} :catchall_c6

    .line 60
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v0, v1

    goto :goto_46

    .line 43
    :catchall_6b
    move-exception v1

    move-object v2, v0

    :goto_6d
    if-eqz v2, :cond_72

    .line 44
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 47
    :cond_72
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v1
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_76} :catch_76
    .catch Ljava/lang/IllegalStateException; {:try_start_6f .. :try_end_76} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_b5
    .catchall {:try_start_6f .. :try_end_76} :catchall_c6

    .line 50
    :catch_76
    move-exception v1

    .line 51
    :try_start_77
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 52
    sget-object v2, Lcn/dbox/core/d/k;->b:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_c6

    .line 60
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_46

    :cond_87
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_46

    .line 53
    :catch_8f
    move-exception v1

    .line 54
    :try_start_90
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 55
    sget-object v1, Lcn/dbox/core/d/k;->b:Lcn/dbox/core/h/d;

    const-string v2, "ImageGetFromHttp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/dbox/core/h/d;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_90 .. :try_end_ad} :catchall_c6

    .line 60
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_46

    .line 56
    :catch_b5
    move-exception v1

    .line 57
    :try_start_b6
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 58
    sget-object v2, Lcn/dbox/core/d/k;->b:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_c6

    .line 60
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_46

    :catchall_c6
    move-exception v0

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0

    .line 43
    :catchall_cf
    move-exception v1

    goto :goto_6d
.end method
