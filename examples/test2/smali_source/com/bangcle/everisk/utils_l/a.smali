.class final Lcom/bangcle/everisk/utils_l/a;
.super Ljava/lang/Object;


# instance fields
.field public T:I

.field U:[B


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bangcle/everisk/utils_l/a;->T:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bangcle/everisk/utils_l/a;->U:[B

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;
    .registers 3

    if-eqz p1, :cond_9

    sget-boolean v0, Lcom/bangcle/everisk/shell/LibProc;->z:Z

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Lcom/bangcle/everisk/utils_l/a;->T:I

    return-object p0
.end method

.method public final c(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;
    .registers 3

    if-eqz p1, :cond_9

    sget-boolean v0, Lcom/bangcle/everisk/shell/LibProc;->z:Z

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/bangcle/everisk/utils_l/a;->T:I

    return-object p0
.end method

.method public final z()Z
    .registers 2

    iget v0, p0, Lcom/bangcle/everisk/utils_l/a;->T:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
