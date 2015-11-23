.class Lcom/android/settings_ext/display/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HandyModeGuideView.java"


# instance fields
.field final synthetic UN:Lcom/android/settings_ext/display/HandyModeGuideView;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/display/HandyModeGuideView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings_ext/display/k;->UN:Lcom/android/settings_ext/display/HandyModeGuideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ext/display/k;->UN:Lcom/android/settings_ext/display/HandyModeGuideView;

    new-instance v1, Lcom/android/settings_ext/display/l;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/display/l;-><init>(Lcom/android/settings_ext/display/k;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/display/HandyModeGuideView;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method
