.class public final enum Lcn/dbox/core/bean/Entrance$EntryReportType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/bean/Entrance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryReportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/dbox/core/bean/Entrance$EntryReportType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENTRY_CLK:Lcn/dbox/core/bean/Entrance$EntryReportType;

.field public static final enum ENTRY_IMP:Lcn/dbox/core/bean/Entrance$EntryReportType;

.field public static final enum NONE:Lcn/dbox/core/bean/Entrance$EntryReportType;

.field public static final enum PRESENTED:Lcn/dbox/core/bean/Entrance$EntryReportType;

.field private static final synthetic a:[Lcn/dbox/core/bean/Entrance$EntryReportType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcn/dbox/core/bean/Entrance$EntryReportType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/bean/Entrance$EntryReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/bean/Entrance$EntryReportType;->NONE:Lcn/dbox/core/bean/Entrance$EntryReportType;

    new-instance v0, Lcn/dbox/core/bean/Entrance$EntryReportType;

    const-string v1, "ENTRY_IMP"

    invoke-direct {v0, v1, v3}, Lcn/dbox/core/bean/Entrance$EntryReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/bean/Entrance$EntryReportType;->ENTRY_IMP:Lcn/dbox/core/bean/Entrance$EntryReportType;

    new-instance v0, Lcn/dbox/core/bean/Entrance$EntryReportType;

    const-string v1, "ENTRY_CLK"

    invoke-direct {v0, v1, v4}, Lcn/dbox/core/bean/Entrance$EntryReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/bean/Entrance$EntryReportType;->ENTRY_CLK:Lcn/dbox/core/bean/Entrance$EntryReportType;

    new-instance v0, Lcn/dbox/core/bean/Entrance$EntryReportType;

    const-string v1, "PRESENTED"

    invoke-direct {v0, v1, v5}, Lcn/dbox/core/bean/Entrance$EntryReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/bean/Entrance$EntryReportType;->PRESENTED:Lcn/dbox/core/bean/Entrance$EntryReportType;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/dbox/core/bean/Entrance$EntryReportType;

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntryReportType;->NONE:Lcn/dbox/core/bean/Entrance$EntryReportType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntryReportType;->ENTRY_IMP:Lcn/dbox/core/bean/Entrance$EntryReportType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntryReportType;->ENTRY_CLK:Lcn/dbox/core/bean/Entrance$EntryReportType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntryReportType;->PRESENTED:Lcn/dbox/core/bean/Entrance$EntryReportType;

    aput-object v1, v0, v5

    sput-object v0, Lcn/dbox/core/bean/Entrance$EntryReportType;->a:[Lcn/dbox/core/bean/Entrance$EntryReportType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dbox/core/bean/Entrance$EntryReportType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcn/dbox/core/bean/Entrance$EntryReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/Entrance$EntryReportType;

    return-object v0
.end method

.method public static values()[Lcn/dbox/core/bean/Entrance$EntryReportType;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcn/dbox/core/bean/Entrance$EntryReportType;->a:[Lcn/dbox/core/bean/Entrance$EntryReportType;

    invoke-virtual {v0}, [Lcn/dbox/core/bean/Entrance$EntryReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dbox/core/bean/Entrance$EntryReportType;

    return-object v0
.end method
