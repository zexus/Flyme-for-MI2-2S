.class Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$1;
.super Ljava/lang/Object;
.source "ZenModeAutomaticConditionSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic agf:Landroid/widget/CheckBox;

.field final synthetic agg:Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$1;->agg:Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;

    iput-object p2, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$1;->agf:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$1;->agg:Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;

    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection$1;->agf:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1, v0, p2}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;->a(Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;Landroid/net/Uri;Z)V

    .line 79
    return-void
.end method
