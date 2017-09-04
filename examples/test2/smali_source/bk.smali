.class public Lbk;
.super Ljava/lang/Object;


# static fields
.field private static a:Lbk;

.field private static final a:Lbl;


# instance fields
.field private b:Lbl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lbk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    sget-object v0, Lbl;->d:Lbl;

    sput-object v0, Lbk;->a:Lbl;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "[HH:mm:ss] "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbk;
    .registers 2

    sget-object v0, Lbk;->a:Lbk;

    if-nez v0, :cond_f

    new-instance v0, Lbk;

    invoke-direct {v0}, Lbk;-><init>()V

    sput-object v0, Lbk;->a:Lbk;

    sget-object v1, Lbk;->a:Lbl;

    iput-object v1, v0, Lbk;->b:Lbl;

    :cond_f
    sget-object v0, Lbk;->a:Lbk;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_5

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v0, Lbl;->a:Lbl;

    invoke-virtual {v0}, Lbl;->ordinal()I

    move-result v0

    iget-object v1, p0, Lbk;->b:Lbl;

    invoke-virtual {v1}, Lbl;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[D] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_21
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    if-eqz p1, :cond_7

    if-eqz p3, :cond_2c

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_7
    sget-object v0, Lbl;->d:Lbl;

    invoke-virtual {v0}, Lbl;->ordinal()I

    move-result v0

    iget-object v1, p0, Lbk;->b:Lbl;

    invoke-virtual {v1}, Lbl;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_30

    const-string v0, ""

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2b
    return-void

    :cond_2c
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " | Exception:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_5

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v0, Lbl;->b:Lbl;

    invoke-virtual {v0}, Lbl;->ordinal()I

    move-result v0

    iget-object v1, p0, Lbk;->b:Lbl;

    invoke-virtual {v1}, Lbl;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[I] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_21
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_5

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v0, Lbl;->c:Lbl;

    invoke-virtual {v0}, Lbl;->ordinal()I

    move-result v0

    iget-object v1, p0, Lbk;->b:Lbl;

    invoke-virtual {v1}, Lbl;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[W] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_21
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
