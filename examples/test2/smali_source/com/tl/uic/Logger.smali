.class public Lcom/tl/uic/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final textKeyName:Ljava/lang/String; = "text"


# instance fields
.field private _application:Landroid/app/Application;

.field private _currentActivity:Landroid/app/Activity;

.field private final _formActivities:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tl/uic/model/Control;",
            ">;>;"
        }
    .end annotation
.end field

.field private _previousFocusControlDate:Ljava/util/Date;

.field private _previousFocusTarget:Lcom/tl/uic/model/Target;

.field private currentScreenview:Lcom/tl/uic/model/Screenview;

.field private loadDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/Logger;

    const v1, 0x3fe

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 3
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/tl/uic/Logger;->_application:Landroid/app/Application;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    return-void
.end method

.method private native createControl(Landroid/view/View;Ljava/lang/String;I)Lcom/tl/uic/model/Control;
.end method

.method private native createTarget(Landroid/view/View;)Lcom/tl/uic/model/Target;
.end method

.method private native getControlSubType(Landroid/view/View;)Ljava/lang/String;
.end method

.method private native getControlType(Landroid/view/View;)Ljava/lang/String;
.end method

.method private native getPosition(Landroid/view/View;)Lcom/tl/uic/model/Position;
.end method

.method private native getPropertyName(Landroid/view/View;)Ljava/lang/String;
.end method

.method private native getState(Lcom/tl/uic/model/Target;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method private native getTlEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getTlType(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method private native setVisitedCount(Landroid/view/View;Lcom/tl/uic/model/Target;)V
.end method

.method private native trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method


# virtual methods
.method protected final native enable(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method protected final native getApplicationScreenviewOffset()J
.end method

.method public final native getCurrentScreenview()Lcom/tl/uic/model/Screenview;
.end method

.method protected final native logConnection(Ljava/lang/String;Lorg/apache/http/HttpResponse;JJJ)Ljava/lang/Boolean;
.end method

.method protected final native logCustomEvent(Ljava/lang/String;Ljava/util/HashMap;I)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method protected final native logEvent(Landroid/view/View;Ljava/lang/String;I)Ljava/lang/Boolean;
.end method

.method protected final native logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method protected final native logException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method protected final native logException(Ljava/lang/Throwable;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method protected final native logScreenview(Landroid/app/Activity;Ljava/lang/String;Lcom/tl/uic/model/ScreenviewType;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method protected final native logTLLibErrorException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method protected final native onDestroy(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method protected final native onPause(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method protected final native onPauseNoActivityInForeground()Ljava/lang/Boolean;
.end method

.method protected final native onResume(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/Boolean;
.end method

.method protected final native registerFormField(Landroid/view/View;Landroid/app/Activity;I)Ljava/lang/Boolean;
.end method

.method protected final native startSession(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method protected final native terminate()Ljava/lang/Boolean;
.end method
