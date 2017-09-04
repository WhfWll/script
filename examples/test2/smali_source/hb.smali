.class public final Lhb;
.super Lfn;


# static fields
.field public static final a:Lhb;

.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lhb;

    invoke-direct {v0}, Lhb;-><init>()V

    sput-object v0, Lhb;->a:Lhb;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lhb;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lfn;-><init>()V

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method final a(Lfs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    sget-object v1, Lhb;->a:[B

    invoke-virtual {p1, v0, v1}, Lfs;->a(I[B)V

    return-void
.end method

.method final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
