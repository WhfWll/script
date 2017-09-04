.class public Lcn/domob/android/ads/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcn/domob/android/ads/k;->a:I

    .line 9
    iput p2, p0, Lcn/domob/android/ads/k;->b:I

    .line 10
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 13
    iget v0, p0, Lcn/domob/android/ads/k;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcn/domob/android/ads/k;->b:I

    return v0
.end method
