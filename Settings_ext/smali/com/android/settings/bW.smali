.class Lcom/android/settings/bW;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettings.java"


# instance fields
.field final synthetic ke:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/settings/bW;->ke:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/settings/bW;->ke:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->b(Lcom/android/settings/DisplaySettings;)V

    .line 583
    return-void
.end method
