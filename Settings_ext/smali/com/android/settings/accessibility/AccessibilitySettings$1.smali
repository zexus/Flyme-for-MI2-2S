.class Lcom/android/settings_ext/accessibility/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic AD:Lcom/android/settings_ext/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings$1;->AD:Lcom/android/settings_ext/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings$1;->AD:Lcom/android/settings_ext/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->a(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/AccessibilitySettings$1;->AD:Lcom/android/settings_ext/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings_ext/accessibility/AccessibilitySettings;->b(Lcom/android/settings_ext/accessibility/AccessibilitySettings;)V

    .line 141
    return-void
.end method
