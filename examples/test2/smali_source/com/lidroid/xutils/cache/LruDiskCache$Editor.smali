.class public final Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
.super Ljava/lang/Object;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V
    .registers 4
    .param p2, "entry"    # Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 809
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->written:[Z

    .line 810
    return-void

    .line 809
    :cond_11
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$7(Lcom/lidroid/xutils/cache/LruDiskCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_e
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V
    .registers 4

    .prologue
    .line 807
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V

    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    .registers 2

    .prologue
    .line 804
    iput-boolean p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->hasErrors:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .registers 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)[Z
    .registers 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->written:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v1, 0x0

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    .line 911
    return-void
.end method

.method public abortUnlessCommitted()V
    .registers 2

    .prologue
    .line 914
    iget-boolean v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->committed:Z

    if-nez v0, :cond_7

    .line 916
    :try_start_4
    invoke-virtual {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_8

    .line 920
    :cond_7
    :goto_7
    return-void

    .line 917
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 896
    iget-boolean v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_19

    .line 897
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v1, 0x0

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    .line 898
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$11(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    .line 902
    :goto_16
    iput-boolean v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->committed:Z

    .line 903
    return-void

    .line 900
    :cond_19
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    goto :goto_16
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 842
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_b

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 821
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    monitor-enter v3

    .line 822
    :try_start_4
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_15

    .line 823
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 821
    :catchall_12
    move-exception v1

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1

    .line 825
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 826
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_12

    .line 831
    :goto_1e
    return-object v1

    .line 829
    :cond_1f
    :try_start_1f
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-virtual {v4, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2a} :catch_2d
    .catchall {:try_start_1f .. :try_end_2a} :catchall_12

    :try_start_2a
    monitor-exit v3

    move-object v1, v2

    goto :goto_1e

    .line 830
    :catch_2d
    move-exception v0

    .line 831
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_12

    goto :goto_1e
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 853
    iget-object v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    monitor-enter v5

    .line 854
    :try_start_3
    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v4}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v4

    if-eq v4, p0, :cond_14

    .line 855
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 853
    :catchall_11
    move-exception v4

    monitor-exit v5
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v4

    .line 857
    :cond_14
    :try_start_14
    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v4}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 858
    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->written:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 860
    :cond_21
    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-virtual {v4, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_11

    move-result-object v0

    .line 863
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_27
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2c} :catch_34
    .catchall {:try_start_27 .. :try_end_2c} :catchall_11

    .line 874
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :goto_2c
    :try_start_2c
    new-instance v4, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;)V

    monitor-exit v5

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_33
    return-object v4

    .line 864
    :catch_34
    move-exception v1

    .line 866
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;
    invoke-static {v4}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_11

    .line 868
    :try_start_3e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_43} :catch_44
    .catchall {:try_start_3e .. :try_end_43} :catchall_11

    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_2c

    .line 869
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_44
    move-exception v2

    .line 871
    .local v2, "e2":Ljava/io/FileNotFoundException;
    :try_start_45
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;
    invoke-static {}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$9()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_11

    goto :goto_33
.end method

.method public set(ILjava/lang/String;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    const/4 v0, 0x0

    .line 884
    .local v0, "writer":Ljava/io/Writer;
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    .line 885
    .end local v0    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    :try_start_c
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_18

    .line 887
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 889
    return-void

    .line 886
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_13
    move-exception v2

    .line 887
    :goto_14
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 888
    throw v2

    .line 886
    .end local v0    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    goto :goto_14
.end method

.method public setEntryExpiryTimestamp(J)V
    .registers 4
    .param p1, "timestamp"    # J

    .prologue
    .line 813
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-static {v0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    .line 814
    return-void
.end method
