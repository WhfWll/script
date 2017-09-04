.class public La/a/a/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)La/a/a/a/a/g;
    .registers 2

    .prologue
    .line 22
    iput p1, p0, La/a/a/a/a/g;->b:I

    .line 23
    return-object p0
.end method

.method protected a(Ljava/lang/String;)La/a/a/a/a/g;
    .registers 2

    .prologue
    .line 13
    iput-object p1, p0, La/a/a/a/a/g;->a:Ljava/lang/String;

    .line 14
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, La/a/a/a/a/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 18
    iget v0, p0, La/a/a/a/a/g;->b:I

    return v0
.end method

.method protected b(I)La/a/a/a/a/g;
    .registers 2

    .prologue
    .line 31
    iput p1, p0, La/a/a/a/a/g;->c:I

    .line 32
    return-object p0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, La/a/a/a/a/g;->c:I

    return v0
.end method
