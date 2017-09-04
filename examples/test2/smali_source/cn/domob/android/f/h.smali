.class public Lcn/domob/android/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 39
    iput p1, p0, Lcn/domob/android/f/h;->e:I

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/android/f/h;->c:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public a([B)V
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcn/domob/android/f/h;->a:[B

    .line 16
    return-void
.end method

.method public a()[B
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcn/domob/android/f/h;->a:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/domob/android/f/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcn/domob/android/f/h;->d:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcn/domob/android/f/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcn/domob/android/f/h;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcn/domob/android/f/h;->e:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/domob/android/f/h;->b:Ljava/lang/String;

    return-object v0
.end method
