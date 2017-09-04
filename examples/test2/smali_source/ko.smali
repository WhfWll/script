.class public final Lko;
.super Ljava/io/InputStream;


# instance fields
.field private a:I

.field private a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lko;->a:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput v0, p0, Lko;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lko;->a:I

    return v0
.end method

.method public final read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lko;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget v1, p0, Lko;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lko;->a:I

    :cond_f
    return v0
.end method
