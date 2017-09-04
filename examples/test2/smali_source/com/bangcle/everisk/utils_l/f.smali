.class public final Lcom/bangcle/everisk/utils_l/f;
.super Ljava/lang/Object;


# instance fields
.field private ab:Ljava/lang/String;

.field private ac:J

.field private ad:J

.field private ae:J

.field private af:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .registers 11

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bangcle/everisk/utils_l/f;->ab:Ljava/lang/String;

    iput-wide v1, p0, Lcom/bangcle/everisk/utils_l/f;->ac:J

    iput-wide v1, p0, Lcom/bangcle/everisk/utils_l/f;->ad:J

    iput-wide v1, p0, Lcom/bangcle/everisk/utils_l/f;->ae:J

    iput-wide v1, p0, Lcom/bangcle/everisk/utils_l/f;->af:J

    iput-object p1, p0, Lcom/bangcle/everisk/utils_l/f;->ab:Ljava/lang/String;

    iput-wide p2, p0, Lcom/bangcle/everisk/utils_l/f;->ac:J

    iput-wide p4, p0, Lcom/bangcle/everisk/utils_l/f;->ad:J

    iput-wide p6, p0, Lcom/bangcle/everisk/utils_l/f;->ae:J

    return-void
.end method


# virtual methods
.method public final G()V
    .registers 5

    iget-wide v0, p0, Lcom/bangcle/everisk/utils_l/f;->af:J

    iget-wide v2, p0, Lcom/bangcle/everisk/utils_l/f;->ad:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3a

    iget-wide v0, p0, Lcom/bangcle/everisk/utils_l/f;->af:J

    iget-wide v2, p0, Lcom/bangcle/everisk/utils_l/f;->ac:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bangcle/everisk/utils_l/f;->af:J

    :cond_f
    :goto_f
    :try_start_f
    const-string v0, "RiskStubShell.Delay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wait "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bangcle/everisk/utils_l/f;->af:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " second for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bangcle/everisk/utils_l/f;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/bangcle/everisk/utils_l/f;->af:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_39} :catch_4a

    :goto_39
    return-void

    :cond_3a
    iget-wide v0, p0, Lcom/bangcle/everisk/utils_l/f;->af:J

    iget-wide v2, p0, Lcom/bangcle/everisk/utils_l/f;->ae:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    iget-wide v0, p0, Lcom/bangcle/everisk/utils_l/f;->af:J

    iget-wide v2, p0, Lcom/bangcle/everisk/utils_l/f;->af:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bangcle/everisk/utils_l/f;->af:J

    goto :goto_f

    :catch_4a
    move-exception v0

    goto :goto_39
.end method
