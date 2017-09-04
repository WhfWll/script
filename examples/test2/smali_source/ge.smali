.class final Lge;
.super Ljava/lang/Object;


# static fields
.field private static a:Lgi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lgi;

    invoke-direct {v0}, Lgi;-><init>()V

    sput-object v0, Lge;->a:Lgi;

    new-instance v0, Lgk;

    invoke-direct {v0}, Lgk;-><init>()V

    return-void
.end method

.method static a(Lfh;)Lgi;
    .registers 2

    iget-object v0, p0, Lfh;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_b

    sget-object v0, Lge;->a:Lgi;

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lgi;

    invoke-direct {v0, p0}, Lgi;-><init>(Lfh;)V

    goto :goto_a
.end method
