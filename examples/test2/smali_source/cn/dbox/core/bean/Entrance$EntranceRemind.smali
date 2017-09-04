.class public Lcn/dbox/core/bean/Entrance$EntranceRemind;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/bean/Entrance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntranceRemind"
.end annotation


# instance fields
.field public final HOT:Ljava/lang/String;

.field public final HOT_CN:Ljava/lang/String;

.field public final NEW:Ljava/lang/String;

.field public final NONE:Ljava/lang/String;

.field public final RED:Ljava/lang/String;

.field final synthetic a:Lcn/dbox/core/bean/Entrance;


# direct methods
.method public constructor <init>(Lcn/dbox/core/bean/Entrance;)V
    .registers 3

    .prologue
    .line 16
    iput-object p1, p0, Lcn/dbox/core/bean/Entrance$EntranceRemind;->a:Lcn/dbox/core/bean/Entrance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "none"

    iput-object v0, p0, Lcn/dbox/core/bean/Entrance$EntranceRemind;->NONE:Ljava/lang/String;

    .line 18
    const-string v0, "red"

    iput-object v0, p0, Lcn/dbox/core/bean/Entrance$EntranceRemind;->RED:Ljava/lang/String;

    .line 19
    const-string v0, "new"

    iput-object v0, p0, Lcn/dbox/core/bean/Entrance$EntranceRemind;->NEW:Ljava/lang/String;

    .line 20
    const-string v0, "hot"

    iput-object v0, p0, Lcn/dbox/core/bean/Entrance$EntranceRemind;->HOT:Ljava/lang/String;

    .line 21
    const-string v0, "hot_cn"

    iput-object v0, p0, Lcn/dbox/core/bean/Entrance$EntranceRemind;->HOT_CN:Ljava/lang/String;

    return-void
.end method
