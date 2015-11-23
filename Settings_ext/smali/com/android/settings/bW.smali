.class Lcom/android/settings_ext/bW;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettings.java"


# instance fields
.field final synthetic ke:Lcom/android/settings_ext/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DisplaySettings;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/settings_ext/bW;->ke:Lcom/android/settings_ext/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/settings_ext/bW;->ke:Lcom/android/settings_ext/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ext/DisplaySettings;->b(Lcom/android/settings_ext/DisplaySettings;)V

    .line 583
    return-void
.end method
