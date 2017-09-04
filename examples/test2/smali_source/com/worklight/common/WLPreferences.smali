.class public Lcom/worklight/common/WLPreferences;
.super Landroid/preference/PreferenceActivity;
.source "WLPreferences.java"


# static fields
.field public static final APP_ID_PREF_KEY:Ljava/lang/String; = "appIdPref"

.field public static final APP_VERSION_PREF_KEY:Ljava/lang/String; = "appVersionPref"

.field public static final EDIT_WL_SERVER_URL_PREF_KEY:Ljava/lang/String; = "editWLServerURLPref"

.field public static final LAST_SETTINGS_URL_STATE_PREF_KEY:Ljava/lang/String; = "lastSettingsUrlStatePref"

.field public static final MODIFY_WL_SERVER_URL_PREF_KEY:Ljava/lang/String; = "resetWLServerURLPref"

.field private static final NEW_APP_ID_PREF_KEY:Ljava/lang/String; = "newAppIdPref"

.field private static final NEW_APP_VERSION_PREF_KEY:Ljava/lang/String; = "newAppVersionPref"

.field private static final NEW_LINE:Ljava/lang/String; = "\n"

.field public static final SHOULD_MODIFY_URL_PREF_KEY:Ljava/lang/String; = "shouldModifyUrlPref"

.field public static final WL_SERVER_URL:Ljava/lang/String; = "WLServerURL"


# instance fields
.field private appIdEditTextPreference:Landroid/preference/EditTextPreference;

.field private appVersionEditTextPreference:Landroid/preference/EditTextPreference;

.field private modifyServerURLCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private serverURLEditTextPreference:Landroid/preference/EditTextPreference;

.field private serverURLafter:Ljava/lang/String;

.field private serverURLbefore:Ljava/lang/String;

.field private wlConfig:Lcom/worklight/common/WLConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/WLPreferences;

    const v1, 0x4b3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->serverURLbefore:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    .line 103
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->modifyServerURLCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 107
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->appIdEditTextPreference:Landroid/preference/EditTextPreference;

    .line 109
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->appVersionEditTextPreference:Landroid/preference/EditTextPreference;

    .line 119
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->wlConfig:Lcom/worklight/common/WLConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/worklight/common/WLPreferences;)Landroid/preference/EditTextPreference;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/common/WLPreferences;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/worklight/common/WLPreferences;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/common/WLPreferences;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/worklight/common/WLPreferences;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/common/WLPreferences;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/worklight/common/WLPreferences;)Lcom/worklight/common/WLConfig;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/common/WLPreferences;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->wlConfig:Lcom/worklight/common/WLConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/worklight/common/WLPreferences;)V
    .registers 1
    .param p0, "x0"    # Lcom/worklight/common/WLPreferences;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/worklight/common/WLPreferences;->setServerURLFieldSummary()V

    return-void
.end method

.method static synthetic access$400(Lcom/worklight/common/WLPreferences;)Landroid/preference/EditTextPreference;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/common/WLPreferences;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->appIdEditTextPreference:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/worklight/common/WLPreferences;)Landroid/preference/EditTextPreference;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/common/WLPreferences;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->appVersionEditTextPreference:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private native createModifyServerCheckbox()V
.end method

.method private native createServerURLTextField()V
.end method

.method private native createTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/EditTextPreference;
.end method

.method private native isUrlChanged()Z
.end method

.method private native isWebResourcesChanged()Z
.end method

.method private native setServerURLFieldSummary()V
.end method


# virtual methods
.method public native onBackPressed()V
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method
