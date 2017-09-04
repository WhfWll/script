.class Lcom/sdu/didi/openapi/ss/i;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lcom/sdu/didi/openapi/ss/g;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/ss/g;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    iput-object p1, p0, Lcom/sdu/didi/openapi/ss/i;->d:Lcom/sdu/didi/openapi/ss/g;

    iput-object p2, p0, Lcom/sdu/didi/openapi/ss/i;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/sdu/didi/openapi/ss/i;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sdu/didi/openapi/ss/i;->c:Ljava/io/File;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/sdu/didi/openapi/ss/i;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/sdu/didi/openapi/ss/i;->c:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_1c
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2d

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_1c

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2b
    const/4 v0, 0x0

    return-object v0

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sdu/didi/openapi/ss/i;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_38} :catch_27

    goto :goto_2b
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/ss/i;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .registers 4

    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/i;->a:Landroid/content/Context;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
