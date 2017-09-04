.class abstract Lib;
.super Ljava/io/InputStream;


# instance fields
.field private a:I

.field protected final a:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lib;->a:Ljava/io/InputStream;

    iput p2, p0, Lib;->a:I

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lib;->a:I

    return v0
.end method

.method protected final a()V
    .registers 3

    iget-object v0, p0, Lib;->a:Ljava/io/InputStream;

    instance-of v0, v0, Lhy;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lib;->a:Ljava/io/InputStream;

    check-cast v0, Lhy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhy;->a(Z)V

    :cond_e
    return-void
.end method
