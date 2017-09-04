.class public Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;
.super Landroid/os/AsyncTask;
.source "SSLWebResourcesDownloaderPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSLWebResourcesDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE_APPLICATION_ZIP:Ljava/lang/String; = "application/zip"

.field private static final DOWNLOADED_ZIP_FILE_NAME:Ljava/lang/String; = "assets.zip"

.field private static final HONEYCOMB:I = 0xb


# instance fields
.field private cookies:Ljava/lang/String;

.field private downloadingMessage:Ljava/lang/String;

.field private instanceAuthId:Ljava/lang/String;

.field private isDirectUpdateSuccess:Z

.field private progressDialog:Landroid/app/ProgressDialog;

.field private shouldUpdateSilently:Z

.field private skinName:Ljava/lang/String;

.field private sslConfig:Lcom/worklight/common/SSLConfig;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;

.field private url:Ljava/lang/String;

.field private wlConfig:Lcom/worklight/common/WLConfig;

.field private wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;

    const v1, 0x467

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;Lcom/worklight/androidgap/WLDroidGap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p2, "wlDroidGap"    # Lcom/worklight/androidgap/WLDroidGap;
    .param p3, "cookies"    # Ljava/lang/String;
    .param p4, "instanceAuthIdHeader"    # Ljava/lang/String;
    .param p5, "shouldUpdateSilently"    # Z
    .param p6, "downloadingMessageKey"    # Ljava/lang/String;
    .param p7, "url"    # Ljava/lang/String;
    .param p8, "skinName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 139
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->this$0:Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;

    .line 140
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->isDirectUpdateSuccess:Z

    .line 129
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->instanceAuthId:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->url:Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->shouldUpdateSilently:Z

    .line 141
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    .line 142
    new-instance v0, Lcom/worklight/common/WLConfig;

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-direct {v0, v1}, Lcom/worklight/common/WLConfig;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    .line 143
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->cookies:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->instanceAuthId:Ljava/lang/String;

    .line 145
    invoke-static {p6, p2}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->downloadingMessage:Ljava/lang/String;

    .line 146
    iput-object p8, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->skinName:Ljava/lang/String;

    .line 147
    iput-object p7, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->url:Ljava/lang/String;

    .line 148
    iput-boolean p5, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->shouldUpdateSilently:Z

    .line 149
    new-instance v0, Lcom/worklight/common/SSLConfig;

    invoke-virtual {p2}, Lcom/worklight/androidgap/WLDroidGap;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/worklight/common/SSLConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sslConfig:Lcom/worklight/common/SSLConfig;

    .line 150
    return-void
.end method

.method private native createProgressDialog()V
.end method

.method private native downloadZipFile()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native extractZipFile(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native handleUpdateException(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native processZipFile()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native runDirectUpdate()Ljava/lang/String;
.end method

.method private native sendRequest()Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->runDirectUpdate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected native onPostExecute(Ljava/lang/String;)V
.end method

.method protected native onPreExecute()V
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 4
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 170
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
