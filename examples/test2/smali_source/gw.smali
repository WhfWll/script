.class final Lgw;
.super Ljava/lang/Object;


# static fields
.field private static a:Lfw;

.field private static a:Lfy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lhi;

    invoke-direct {v0}, Lhi;-><init>()V

    sput-object v0, Lgw;->a:Lfw;

    new-instance v0, Lhk;

    invoke-direct {v0}, Lhk;-><init>()V

    sput-object v0, Lgw;->a:Lfy;

    return-void
.end method

.method static a(Lfh;)Lfw;
    .registers 2

    iget-object v0, p0, Lfh;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_b

    sget-object v0, Lgw;->a:Lfw;

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lht;

    invoke-direct {v0, p0}, Lht;-><init>(Lfh;)V

    goto :goto_a
.end method

.method static a(Lfh;)Lfy;
    .registers 2

    iget-object v0, p0, Lfh;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_b

    sget-object v0, Lgw;->a:Lfy;

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lhu;

    invoke-direct {v0, p0}, Lhu;-><init>(Lfh;)V

    goto :goto_a
.end method
