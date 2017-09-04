.class public Lcom/lidroid/xutils/view/ViewInjectInfo;
.super Ljava/lang/Object;
.source "ViewInjectInfo.java"


# instance fields
.field public parentId:I

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    if-ne p0, p1, :cond_5

    .line 22
    :cond_4
    :goto_4
    return v1

    .line 15
    :cond_5
    instance-of v3, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 17
    check-cast v0, Lcom/lidroid/xutils/view/ViewInjectInfo;

    .line 19
    .local v0, "that":Lcom/lidroid/xutils/view/ViewInjectInfo;
    iget v3, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    iget v4, v0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    if-eq v3, v4, :cond_16

    move v1, v2

    goto :goto_4

    .line 20
    :cond_16
    iget-object v3, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-nez v3, :cond_20

    iget-object v3, v0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    .line 22
    :cond_20
    iget-object v1, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    iget-object v2, v0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 27
    iget-object v1, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 28
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    add-int v0, v1, v2

    .line 29
    return v0
.end method
