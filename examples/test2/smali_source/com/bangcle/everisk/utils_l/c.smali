.class public final Lcom/bangcle/everisk/utils_l/c;
.super Ljava/lang/Object;


# instance fields
.field private W:Lcom/bangcle/everisk/utils_l/b;

.field private X:Lcom/bangcle/everisk/utils_l/d;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Lcom/bangcle/everisk/utils_l/b;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Lcom/bangcle/everisk/utils_l/b;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bangcle/everisk/utils_l/c;->W:Lcom/bangcle/everisk/utils_l/b;

    new-instance v0, Lcom/bangcle/everisk/utils_l/d;

    iget-object v1, p0, Lcom/bangcle/everisk/utils_l/c;->W:Lcom/bangcle/everisk/utils_l/b;

    invoke-direct {v0, v1}, Lcom/bangcle/everisk/utils_l/d;-><init>(Lcom/bangcle/everisk/utils_l/b;)V

    iput-object v0, p0, Lcom/bangcle/everisk/utils_l/c;->X:Lcom/bangcle/everisk/utils_l/d;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_20

    iget-object v0, p0, Lcom/bangcle/everisk/utils_l/c;->X:Lcom/bangcle/everisk/utils_l/d;

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/bangcle/everisk/utils_l/c;->D()V

    :cond_1f
    return-void

    :catchall_20
    move-exception v0

    iget-object v1, p0, Lcom/bangcle/everisk/utils_l/c;->X:Lcom/bangcle/everisk/utils_l/d;

    if-nez v1, :cond_28

    invoke-direct {p0}, Lcom/bangcle/everisk/utils_l/c;->D()V

    :cond_28
    throw v0
.end method

.method private D()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/bangcle/everisk/utils_l/c;->W:Lcom/bangcle/everisk/utils_l/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bangcle/everisk/utils_l/c;->W:Lcom/bangcle/everisk/utils_l/b;

    invoke-virtual {v0}, Lcom/bangcle/everisk/utils_l/b;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bangcle/everisk/utils_l/c;->W:Lcom/bangcle/everisk/utils_l/b;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method static a(Lcom/bangcle/everisk/utils_l/b;)J
    .registers 7

    invoke-virtual {p0}, Lcom/bangcle/everisk/utils_l/b;->B()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_36

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Maximal file offset is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " given offset is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_36
    return-wide v0
.end method


# virtual methods
.method public final E()Lcom/bangcle/everisk/utils_l/d;
    .registers 2

    iget-object v0, p0, Lcom/bangcle/everisk/utils_l/c;->X:Lcom/bangcle/everisk/utils_l/d;

    return-object v0
.end method

.method protected final finalize()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/bangcle/everisk/utils_l/c;->D()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
