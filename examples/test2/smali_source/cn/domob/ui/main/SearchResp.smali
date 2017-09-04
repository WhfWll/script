.class public Lcn/domob/ui/main/SearchResp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private recommendAdInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private searchAdInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "_searchAdInfos":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    .local p2, "_recommendAdInfos":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/domob/ui/main/SearchResp;->searchAdInfos:Ljava/util/List;

    .line 14
    iput-object p2, p0, Lcn/domob/ui/main/SearchResp;->recommendAdInfos:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public getRecommendAdInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/ui/main/SearchResp;->recommendAdInfos:Ljava/util/List;

    return-object v0
.end method

.method public getSearchAdInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcn/domob/ui/main/SearchResp;->searchAdInfos:Ljava/util/List;

    return-object v0
.end method

.method public setRecommendAdInfos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "recommendAdInfos":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    iput-object p1, p0, Lcn/domob/ui/main/SearchResp;->recommendAdInfos:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setSearchAdInfos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "searchAdInfos":Ljava/util/List;, "Ljava/util/List<Lcn/domob/wall/core/bean/AdInfo;>;"
    iput-object p1, p0, Lcn/domob/ui/main/SearchResp;->searchAdInfos:Ljava/util/List;

    .line 25
    return-void
.end method
