.class Lcom/android/settings/accessibility/AccessibilitySettings$4;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "AccessibilitySettings.java"


# instance fields
.field final synthetic AD:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$4;->AD:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$4;->AD:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->e(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    .line 183
    return-void
.end method
