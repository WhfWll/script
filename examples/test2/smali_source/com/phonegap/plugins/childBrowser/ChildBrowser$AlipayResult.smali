.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$AlipayResult;
.super Ljava/lang/Object;
.source "ChildBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlipayResult"
.end annotation


# instance fields
.field memo:Ljava/lang/String;

.field result:Ljava/lang/String;

.field resultStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$AlipayResult;

    const v1, 0x3d7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Ljava/lang/String;)V
    .registers 8
    .param p2, "rawResult"    # Ljava/lang/String;

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$AlipayResult;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    const-string v2, ";"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, "resultParams":[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_d
    if-lt v2, v3, :cond_10

    .line 1128
    return-void

    .line 1117
    :cond_10
    aget-object v0, v1, v2

    .line 1118
    .local v0, "resultParam":Ljava/lang/String;
    const-string v4, "resultStatus"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1119
    const-string v4, "resultStatus"

    invoke-virtual {p0, v0, v4}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$AlipayResult;->gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$AlipayResult;->resultStatus:Ljava/lang/String;

    .line 1121
    :cond_22
    const-string v4, "result"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1122
    const-string v4, "result"

    invoke-virtual {p0, v0, v4}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$AlipayResult;->gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$AlipayResult;->result:Ljava/lang/String;

    .line 1124
    :cond_32
    const-string v4, "memo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1125
    const-string v4, "memo"

    invoke-virtual {p0, v0, v4}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$AlipayResult;->gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$AlipayResult;->memo:Ljava/lang/String;

    .line 1117
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method


# virtual methods
.method public native gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native toString()Ljava/lang/String;
.end method
