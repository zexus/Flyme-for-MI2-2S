.class Lcom/android/settings_ext/voice/f;
.super Ljava/lang/Object;
.source "VoiceInputPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic anr:Lcom/android/settings_ext/voice/e;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/voice/e;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings_ext/voice/f;->anr:Lcom/android/settings_ext/voice/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ext/voice/f;->anr:Lcom/android/settings_ext/voice/e;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ext/voice/e;->a(Landroid/widget/CompoundButton;Z)V

    .line 67
    return-void
.end method
