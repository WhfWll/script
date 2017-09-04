.class Lorg/apache/cordova/FileTransfer$4;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/FileTransfer;->download(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/FileTransfer;

.field final synthetic val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

.field final synthetic val$headers:Lorg/json/JSONObject;

.field final synthetic val$objectId:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$target:Ljava/lang/String;

.field final synthetic val$trustEveryone:Z

.field final synthetic val$url:Ljava/net/URL;

.field final synthetic val$useHttps:Z


# direct methods
.method constructor <init>(Lorg/apache/cordova/FileTransfer;Lorg/apache/cordova/FileTransfer$RequestContext;Ljava/lang/String;ZZLjava/net/URL;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 649
    iput-object p1, p0, Lorg/apache/cordova/FileTransfer$4;->this$0:Lorg/apache/cordova/FileTransfer;

    iput-object p2, p0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    iput-object p3, p0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    iput-boolean p5, p0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    iput-object p6, p0, Lorg/apache/cordova/FileTransfer$4;->val$url:Ljava/net/URL;

    iput-object p7, p0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    iput-object p8, p0, Lorg/apache/cordova/FileTransfer$4;->val$headers:Lorg/json/JSONObject;

    iput-object p9, p0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 30

    .prologue
    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->aborted:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 794
    :goto_e
    return-void

    .line 654
    :cond_f
    const/4 v6, 0x0

    .line 655
    .local v6, "connection":Ljava/net/URLConnection;
    const/4 v14, 0x0

    .line 656
    .local v14, "oldHostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v15, 0x0

    .line 657
    .local v15, "oldSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v10, 0x0

    .line 658
    .local v10, "file":Ljava/io/File;
    const/16 v20, 0x0

    .line 661
    .local v20, "result":Lorg/apache/cordova/api/PluginResult;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->this$0:Lorg/apache/cordova/FileTransfer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v25, v0

    # invokes: Lorg/apache/cordova/FileTransfer;->getFileFromPath(Ljava/lang/String;)Ljava/io/File;
    invoke-static/range {v24 .. v25}, Lorg/apache/cordova/FileTransfer;->access$800(Lorg/apache/cordova/FileTransfer;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v10, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->targetFile:Ljava/io/File;

    .line 664
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z

    .line 668
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1a9

    .line 670
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v24, v0

    if-nez v24, :cond_189

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$url:Ljava/net/URL;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v6, v0

    .line 691
    :goto_55
    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v24, v0

    if-eqz v24, :cond_65

    .line 692
    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v24, v0

    const-string v25, "GET"

    invoke-virtual/range {v24 .. v25}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 696
    :cond_65
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 697
    .local v7, "cookie":Ljava/lang/String;
    if-eqz v7, :cond_7c

    .line 699
    const-string v24, "cookie"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$headers:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8f

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$headers:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    # invokes: Lorg/apache/cordova/FileTransfer;->addHeadersToRequest(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
    invoke-static {v6, v0}, Lorg/apache/cordova/FileTransfer;->access$200(Ljava/net/URLConnection;Lorg/json/JSONObject;)V

    .line 707
    :cond_8f
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 709
    const-string v24, "FileTransfer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Download file:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$url:Ljava/net/URL;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    new-instance v18, Lorg/apache/cordova/FileProgressResult;

    invoke-direct/range {v18 .. v18}, Lorg/apache/cordova/FileProgressResult;-><init>()V

    .line 712
    .local v18, "progress":Lorg/apache/cordova/FileProgressResult;
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_d4

    .line 714
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileProgressResult;->setLengthComputable(Z)V

    .line 715
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileProgressResult;->setTotal(J)V
    :try_end_d4
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_d4} :catch_224
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_d4} :catch_385
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_d4} :catch_42c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_d4} :catch_4bb
    .catchall {:try_start_15 .. :try_end_d4} :catchall_562

    .line 718
    :cond_d4
    const/16 v16, 0x0

    .line 719
    .local v16, "outputStream":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 722
    .local v13, "inputStream":Ljava/io/InputStream;
    :try_start_d7
    # invokes: Lorg/apache/cordova/FileTransfer;->getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;
    invoke-static {v6}, Lorg/apache/cordova/FileTransfer;->access$500(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v13

    .line 723
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e2
    .catchall {:try_start_d7 .. :try_end_e2} :catchall_5f0

    .line 724
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .local v17, "outputStream":Ljava/io/FileOutputStream;
    :try_start_e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_e9
    .catchall {:try_start_e2 .. :try_end_e9} :catchall_20c

    .line 725
    :try_start_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->aborted:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1b5

    .line 726
    monitor-exit v25
    :try_end_f8
    .catchall {:try_start_e9 .. :try_end_f8} :catchall_2cb

    .line 745
    :try_start_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 746
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v13}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 747
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v17 .. v17}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V
    :try_end_10c
    .catch Ljava/io/FileNotFoundException; {:try_start_f8 .. :try_end_10c} :catch_224
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_10c} :catch_385
    .catch Lorg/json/JSONException; {:try_start_f8 .. :try_end_10c} :catch_42c
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_10c} :catch_4bb
    .catchall {:try_start_f8 .. :try_end_10c} :catchall_562

    .line 772
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v25

    monitor-enter v25

    .line 773
    :try_start_111
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    monitor-exit v25
    :try_end_123
    .catchall {:try_start_111 .. :try_end_123} :catchall_5ea

    .line 776
    if-eqz v6, :cond_13e

    .line 778
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13e

    move-object v12, v6

    .line 779
    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    .line 780
    .local v12, "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v12, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 781
    invoke-virtual {v12, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 785
    .end local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_13e
    if-nez v20, :cond_165

    .line 786
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v25, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v27, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v6}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 789
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_165
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v24

    sget-object v25, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_17a

    if-eqz v10, :cond_17a

    .line 790
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 792
    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    .end local v7    # "cookie":Ljava/lang/String;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .end local v18    # "progress":Lorg/apache/cordova/FileProgressResult;
    :goto_180
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_e

    .line 677
    :cond_189
    :try_start_189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$url:Ljava/net/URL;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    .line 678
    .restart local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    # invokes: Lorg/apache/cordova/FileTransfer;->trustAllHosts(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    invoke-static {v12}, Lorg/apache/cordova/FileTransfer;->access$000(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v15

    .line 680
    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v14

    .line 682
    # getter for: Lorg/apache/cordova/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$100()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 683
    move-object v6, v12

    .line 684
    goto/16 :goto_55

    .line 688
    .end local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$url:Ljava/net/URL;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_1b2
    .catch Ljava/io/FileNotFoundException; {:try_start_189 .. :try_end_1b2} :catch_224
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_1b2} :catch_385
    .catch Lorg/json/JSONException; {:try_start_189 .. :try_end_1b2} :catch_42c
    .catch Ljava/lang/Throwable; {:try_start_189 .. :try_end_1b2} :catch_4bb
    .catchall {:try_start_189 .. :try_end_1b2} :catchall_562

    move-result-object v6

    goto/16 :goto_55

    .line 728
    .restart local v7    # "cookie":Ljava/lang/String;
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v18    # "progress":Lorg/apache/cordova/FileProgressResult;
    :cond_1b5
    :try_start_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v13, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 729
    monitor-exit v25
    :try_end_1c0
    .catchall {:try_start_1b5 .. :try_end_1c0} :catchall_2cb

    .line 732
    const/16 v24, 0x4000

    :try_start_1c2
    move/from16 v0, v24

    new-array v4, v0, [B

    .line 733
    .local v4, "buffer":[B
    const/4 v5, 0x0

    .line 734
    .local v5, "bytesRead":I
    const-wide/16 v22, 0x0

    .line 735
    .local v22, "totalBytes":J
    :goto_1c9
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2ce

    .line 736
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 737
    int-to-long v0, v5

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    .line 739
    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileProgressResult;->setLoaded(J)V

    .line 740
    new-instance v19, Lorg/apache/cordova/api/PluginResult;

    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/cordova/FileProgressResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 741
    .local v19, "progressResult":Lorg/apache/cordova/api/PluginResult;
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_20b
    .catchall {:try_start_1c2 .. :try_end_20b} :catchall_20c

    goto :goto_1c9

    .line 745
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v19    # "progressResult":Lorg/apache/cordova/api/PluginResult;
    .end local v22    # "totalBytes":J
    :catchall_20c
    move-exception v24

    move-object/from16 v16, v17

    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    :goto_20f
    :try_start_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 746
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v13}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 747
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 745
    throw v24
    :try_end_224
    .catch Ljava/io/FileNotFoundException; {:try_start_20f .. :try_end_224} :catch_224
    .catch Ljava/io/IOException; {:try_start_20f .. :try_end_224} :catch_385
    .catch Lorg/json/JSONException; {:try_start_20f .. :try_end_224} :catch_42c
    .catch Ljava/lang/Throwable; {:try_start_20f .. :try_end_224} :catch_4bb
    .catchall {:try_start_20f .. :try_end_224} :catchall_562

    .line 756
    .end local v7    # "cookie":Ljava/lang/String;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .end local v18    # "progress":Lorg/apache/cordova/FileProgressResult;
    :catch_224
    move-exception v8

    .line 757
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_225
    sget v24, Lorg/apache/cordova/FileTransfer;->FILE_NOT_FOUND_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v26, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v6}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v9

    .line 758
    .local v9, "error":Lorg/json/JSONObject;
    const-string v24, "FileTransfer"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    new-instance v21, Lorg/apache/cordova/api/PluginResult;

    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_255
    .catchall {:try_start_225 .. :try_end_255} :catchall_562

    .line 772
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .local v21, "result":Lorg/apache/cordova/api/PluginResult;
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v25

    monitor-enter v25

    .line 773
    :try_start_25a
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    monitor-exit v25
    :try_end_26c
    .catchall {:try_start_25a .. :try_end_26c} :catchall_5de

    .line 776
    if-eqz v6, :cond_287

    .line 778
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v24, v0

    if-eqz v24, :cond_287

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v24, v0

    if-eqz v24, :cond_287

    move-object v12, v6

    .line 779
    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    .line 780
    .restart local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v12, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 781
    invoke-virtual {v12, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 785
    .end local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_287
    if-nez v21, :cond_603

    .line 786
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v25, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v27, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v6}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 789
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :goto_2ae
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v24

    sget-object v25, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2c3

    if-eqz v10, :cond_2c3

    .line 790
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 792
    :cond_2c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    goto/16 :goto_180

    .line 729
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "error":Lorg/json/JSONObject;
    .restart local v7    # "cookie":Ljava/lang/String;
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v18    # "progress":Lorg/apache/cordova/FileProgressResult;
    :catchall_2cb
    move-exception v24

    :try_start_2cc
    monitor-exit v25
    :try_end_2cd
    .catchall {:try_start_2cc .. :try_end_2cd} :catchall_2cb

    :try_start_2cd
    throw v24
    :try_end_2ce
    .catchall {:try_start_2cd .. :try_end_2ce} :catchall_20c

    .line 745
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytesRead":I
    .restart local v22    # "totalBytes":J
    :cond_2ce
    :try_start_2ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 746
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v13}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 747
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v17 .. v17}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 750
    const-string v24, "FileTransfer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Saved file: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-static {v10}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v11

    .line 755
    .local v11, "fileEntry":Lorg/json/JSONObject;
    new-instance v21, Lorg/apache/cordova/api/PluginResult;

    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v11}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_30f
    .catch Ljava/io/FileNotFoundException; {:try_start_2ce .. :try_end_30f} :catch_224
    .catch Ljava/io/IOException; {:try_start_2ce .. :try_end_30f} :catch_385
    .catch Lorg/json/JSONException; {:try_start_2ce .. :try_end_30f} :catch_42c
    .catch Ljava/lang/Throwable; {:try_start_2ce .. :try_end_30f} :catch_4bb
    .catchall {:try_start_2ce .. :try_end_30f} :catchall_562

    .line 772
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v25

    monitor-enter v25

    .line 773
    :try_start_314
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    monitor-exit v25
    :try_end_326
    .catchall {:try_start_314 .. :try_end_326} :catchall_5ed

    .line 776
    if-eqz v6, :cond_341

    .line 778
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v24, v0

    if-eqz v24, :cond_341

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v24, v0

    if-eqz v24, :cond_341

    move-object v12, v6

    .line 779
    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    .line 780
    .restart local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v12, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 781
    invoke-virtual {v12, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 785
    .end local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_341
    if-nez v21, :cond_5f3

    .line 786
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v25, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v27, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v6}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 789
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :goto_368
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v24

    sget-object v25, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_37d

    if-eqz v10, :cond_37d

    .line 790
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 792
    :cond_37d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    goto/16 :goto_180

    .line 760
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v7    # "cookie":Ljava/lang/String;
    .end local v11    # "fileEntry":Lorg/json/JSONObject;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .end local v18    # "progress":Lorg/apache/cordova/FileProgressResult;
    .end local v22    # "totalBytes":J
    :catch_385
    move-exception v8

    .line 761
    .local v8, "e":Ljava/io/IOException;
    :try_start_386
    sget v24, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v26, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v6}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v9

    .line 762
    .restart local v9    # "error":Lorg/json/JSONObject;
    const-string v24, "FileTransfer"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    new-instance v21, Lorg/apache/cordova/api/PluginResult;

    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_3b6
    .catchall {:try_start_386 .. :try_end_3b6} :catchall_562

    .line 772
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v25

    monitor-enter v25

    .line 773
    :try_start_3bb
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    monitor-exit v25
    :try_end_3cd
    .catchall {:try_start_3bb .. :try_end_3cd} :catchall_5e1

    .line 776
    if-eqz v6, :cond_3e8

    .line 778
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3e8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3e8

    move-object v12, v6

    .line 779
    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    .line 780
    .restart local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v12, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 781
    invoke-virtual {v12, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 785
    .end local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_3e8
    if-nez v21, :cond_5ff

    .line 786
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v25, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v27, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v6}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 789
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :goto_40f
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v24

    sget-object v25, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_424

    if-eqz v10, :cond_424

    .line 790
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 792
    :cond_424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    goto/16 :goto_180

    .line 764
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :catch_42c
    move-exception v8

    .line 765
    .local v8, "e":Lorg/json/JSONException;
    :try_start_42d
    const-string v24, "FileTransfer"

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    new-instance v21, Lorg/apache/cordova/api/PluginResult;

    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V
    :try_end_445
    .catchall {:try_start_42d .. :try_end_445} :catchall_562

    .line 772
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v25

    monitor-enter v25

    .line 773
    :try_start_44a
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    monitor-exit v25
    :try_end_45c
    .catchall {:try_start_44a .. :try_end_45c} :catchall_5e4

    .line 776
    if-eqz v6, :cond_477

    .line 778
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v24, v0

    if-eqz v24, :cond_477

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v24, v0

    if-eqz v24, :cond_477

    move-object v12, v6

    .line 779
    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    .line 780
    .restart local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v12, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 781
    invoke-virtual {v12, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 785
    .end local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_477
    if-nez v21, :cond_5fb

    .line 786
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v25, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v27, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v6}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 789
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :goto_49e
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v24

    sget-object v25, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4b3

    if-eqz v10, :cond_4b3

    .line 790
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 792
    :cond_4b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    goto/16 :goto_180

    .line 767
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_4bb
    move-exception v8

    .line 768
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_4bc
    sget v24, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v26, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v6}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v9

    .line 769
    .restart local v9    # "error":Lorg/json/JSONObject;
    const-string v24, "FileTransfer"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 770
    new-instance v21, Lorg/apache/cordova/api/PluginResult;

    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_4ec
    .catchall {:try_start_4bc .. :try_end_4ec} :catchall_562

    .line 772
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v25

    monitor-enter v25

    .line 773
    :try_start_4f1
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    monitor-exit v25
    :try_end_503
    .catchall {:try_start_4f1 .. :try_end_503} :catchall_5e7

    .line 776
    if-eqz v6, :cond_51e

    .line 778
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v24, v0

    if-eqz v24, :cond_51e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v24, v0

    if-eqz v24, :cond_51e

    move-object v12, v6

    .line 779
    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    .line 780
    .restart local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v12, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 781
    invoke-virtual {v12, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 785
    .end local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_51e
    if-nez v21, :cond_5f7

    .line 786
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v25, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v27, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v6}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 789
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :goto_545
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v24

    sget-object v25, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_55a

    if-eqz v10, :cond_55a

    .line 790
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 792
    :cond_55a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v24, v0

    goto/16 :goto_180

    .line 772
    .end local v8    # "e":Ljava/lang/Throwable;
    .end local v9    # "error":Lorg/json/JSONObject;
    :catchall_562
    move-exception v24

    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v25

    monitor-enter v25

    .line 773
    :try_start_568
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    monitor-exit v25
    :try_end_576
    .catchall {:try_start_568 .. :try_end_576} :catchall_5db

    .line 776
    if-eqz v6, :cond_591

    .line 778
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v25, v0

    if-eqz v25, :cond_591

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v25, v0

    if-eqz v25, :cond_591

    move-object v12, v6

    .line 779
    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    .line 780
    .restart local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v12, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 781
    invoke-virtual {v12, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 785
    .end local v12    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_591
    if-nez v20, :cond_5b8

    .line 786
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    sget-object v25, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v26, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v28, v0

    move/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v6}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 789
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_5b8
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v25

    sget-object v26, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v26 .. v26}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5cd

    if-eqz v10, :cond_5cd

    .line 790
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 792
    :cond_5cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 772
    throw v24

    .line 774
    :catchall_5db
    move-exception v24

    :try_start_5dc
    monitor-exit v25
    :try_end_5dd
    .catchall {:try_start_5dc .. :try_end_5dd} :catchall_5db

    throw v24

    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .local v8, "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "error":Lorg/json/JSONObject;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    :catchall_5de
    move-exception v24

    :try_start_5df
    monitor-exit v25
    :try_end_5e0
    .catchall {:try_start_5df .. :try_end_5e0} :catchall_5de

    throw v24

    .local v8, "e":Ljava/io/IOException;
    :catchall_5e1
    move-exception v24

    :try_start_5e2
    monitor-exit v25
    :try_end_5e3
    .catchall {:try_start_5e2 .. :try_end_5e3} :catchall_5e1

    throw v24

    .end local v9    # "error":Lorg/json/JSONObject;
    .local v8, "e":Lorg/json/JSONException;
    :catchall_5e4
    move-exception v24

    :try_start_5e5
    monitor-exit v25
    :try_end_5e6
    .catchall {:try_start_5e5 .. :try_end_5e6} :catchall_5e4

    throw v24

    .local v8, "e":Ljava/lang/Throwable;
    .restart local v9    # "error":Lorg/json/JSONObject;
    :catchall_5e7
    move-exception v24

    :try_start_5e8
    monitor-exit v25
    :try_end_5e9
    .catchall {:try_start_5e8 .. :try_end_5e9} :catchall_5e7

    throw v24

    .end local v8    # "e":Ljava/lang/Throwable;
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v7    # "cookie":Ljava/lang/String;
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v18    # "progress":Lorg/apache/cordova/FileProgressResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :catchall_5ea
    move-exception v24

    :try_start_5eb
    monitor-exit v25
    :try_end_5ec
    .catchall {:try_start_5eb .. :try_end_5ec} :catchall_5ea

    throw v24

    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytesRead":I
    .restart local v11    # "fileEntry":Lorg/json/JSONObject;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v22    # "totalBytes":J
    :catchall_5ed
    move-exception v24

    :try_start_5ee
    monitor-exit v25
    :try_end_5ef
    .catchall {:try_start_5ee .. :try_end_5ef} :catchall_5ed

    throw v24

    .line 745
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v11    # "fileEntry":Lorg/json/JSONObject;
    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .end local v22    # "totalBytes":J
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :catchall_5f0
    move-exception v24

    goto/16 :goto_20f

    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytesRead":I
    .restart local v11    # "fileEntry":Lorg/json/JSONObject;
    .restart local v17    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v22    # "totalBytes":J
    :cond_5f3
    move-object/from16 v20, v21

    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_368

    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v7    # "cookie":Ljava/lang/String;
    .end local v11    # "fileEntry":Lorg/json/JSONObject;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "outputStream":Ljava/io/FileOutputStream;
    .end local v18    # "progress":Lorg/apache/cordova/FileProgressResult;
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .end local v22    # "totalBytes":J
    .restart local v8    # "e":Ljava/lang/Throwable;
    .restart local v9    # "error":Lorg/json/JSONObject;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_5f7
    move-object/from16 v20, v21

    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_545

    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .local v8, "e":Lorg/json/JSONException;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_5fb
    move-object/from16 v20, v21

    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_49e

    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .local v8, "e":Ljava/io/IOException;
    .restart local v9    # "error":Lorg/json/JSONObject;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_5ff
    move-object/from16 v20, v21

    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_40f

    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .local v8, "e":Ljava/io/FileNotFoundException;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_603
    move-object/from16 v20, v21

    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_2ae
.end method
