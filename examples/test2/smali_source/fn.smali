.class public abstract Lfn;
.super Lfv;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lfv;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lfv;)Z
    .registers 3

    instance-of v0, p1, Lfn;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "NULL"

    return-object v0
.end method
