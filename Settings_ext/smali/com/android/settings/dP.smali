.class Lcom/android/settings_ext/dP;
.super Ljava/lang/Object;
.source "MiuiLocaleSettings.java"


# instance fields
.field displayName:Ljava/lang/String;

.field final synthetic qj:Lcom/android/settings_ext/MiuiLocaleSettings;

.field qk:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/MiuiLocaleSettings;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings_ext/dP;->qj:Lcom/android/settings_ext/MiuiLocaleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/MiuiLocaleSettings;Lcom/android/settings_ext/dL;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings_ext/dP;-><init>(Lcom/android/settings_ext/MiuiLocaleSettings;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ext/dP;->displayName:Ljava/lang/String;

    return-object v0
.end method
