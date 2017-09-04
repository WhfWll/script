.class public abstract Lcom/bontai/mobiads/ads/entity/EntityBase;
.super Ljava/lang/Object;
.source "EntityBase.java"


# instance fields
.field private id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .prologue
    .line 14
    iget v0, p0, Lcom/bontai/mobiads/ads/entity/EntityBase;->id:I

    return v0
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/bontai/mobiads/ads/entity/EntityBase;->id:I

    .line 19
    return-void
.end method
