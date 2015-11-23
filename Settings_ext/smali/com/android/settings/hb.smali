.class Lcom/android/settings_ext/hb;
.super Ljava/lang/Object;
.source "UsageAccessSettings.java"


# instance fields
.field final packageName:Ljava/lang/String;

.field zd:Landroid/content/pm/PackageInfo;

.field ze:Z

.field zf:I

.field zg:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings_ext/hb;->packageName:Ljava/lang/String;

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings_ext/hb;->zf:I

    .line 64
    return-void
.end method
