.class public Lcom/worklight/androidgap/plugin/WLMenuItem;
.super Ljava/lang/Object;
.source "WLMenuItem.java"


# instance fields
.field private callback:Ljava/lang/String;

.field private hasChanged:Z

.field private id:I

.field private imagePath:Ljava/lang/String;

.field private isEnabled:Z

.field private javascriptId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/WLMenuItem;

    const v1, 0x475

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "javascriptId"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "imagePath"    # Ljava/lang/String;
    .param p6, "isEnabled"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/worklight/androidgap/plugin/WLMenuItem;->id:I

    .line 35
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/WLMenuItem;->javascriptId:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/WLMenuItem;->callback:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/worklight/androidgap/plugin/WLMenuItem;->title:Ljava/lang/String;

    .line 38
    iput-boolean p6, p0, Lcom/worklight/androidgap/plugin/WLMenuItem;->isEnabled:Z

    .line 39
    invoke-virtual {p0, p5}, Lcom/worklight/androidgap/plugin/WLMenuItem;->setImagePath(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLMenuItem;->hasChanged:Z

    .line 41
    return-void
.end method

.method private native setChanged()V
.end method


# virtual methods
.method public native getCallback()Ljava/lang/String;
.end method

.method public native getId()I
.end method

.method public native getImage(Lcom/worklight/androidgap/WLDroidGap;)Landroid/graphics/drawable/Drawable;
.end method

.method public native getImagePath()Ljava/lang/String;
.end method

.method public native getJavaScriptId()Ljava/lang/String;
.end method

.method public native getTitle()Ljava/lang/String;
.end method

.method public native hasChanged()Z
.end method

.method public native isEnabled()Z
.end method

.method public native setEnabled(Z)V
.end method

.method public native setImagePath(Ljava/lang/String;)V
.end method

.method public native setTitle(Ljava/lang/String;)V
.end method

.method public native unsetChanged()V
.end method
