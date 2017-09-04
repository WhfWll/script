.class public final enum Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/bean/Entrance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntranceRemindEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HOT:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

.field public static final enum HOT_CN:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

.field public static final enum NEW:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

.field public static final enum NONE:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

.field public static final enum RED:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

.field private static final synthetic a:[Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->NONE:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    new-instance v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    const-string v1, "RED"

    invoke-direct {v0, v1, v3}, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->RED:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    new-instance v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v4}, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->NEW:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    new-instance v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    const-string v1, "HOT"

    invoke-direct {v0, v1, v5}, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->HOT:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    new-instance v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    const-string v1, "HOT_CN"

    invoke-direct {v0, v1, v6}, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->HOT_CN:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->NONE:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->RED:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->NEW:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->HOT:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->HOT_CN:Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->a:[Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    return-object v0
.end method

.method public static values()[Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->a:[Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    invoke-virtual {v0}, [Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dbox/core/bean/Entrance$EntranceRemindEnum;

    return-object v0
.end method
