.class public Lcom/android/settings/quicklaunch/e;
.super Landroid/preference/Preference;
.source "ShortcutPreference.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static Mt:I

.field private static ahT:Ljava/lang/Object;

.field private static ahU:Ljava/lang/String;

.field private static ahV:Ljava/lang/String;

.field private static ahW:Landroid/content/res/ColorStateList;

.field private static ahX:Landroid/content/res/ColorStateList;

.field private static ahY:Landroid/content/res/ColorStateList;

.field private static ahZ:Landroid/content/res/ColorStateList;


# instance fields
.field private aia:C

.field private aib:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/quicklaunch/e;->ahT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;C)V
    .locals 5

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 52
    sget-object v1, Lcom/android/settings/quicklaunch/e;->ahT:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/android/settings/quicklaunch/e;->ahU:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    const v0, 0x7f0905dc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/quicklaunch/e;->ahU:Ljava/lang/String;

    .line 57
    const v0, 0x7f0905dd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/quicklaunch/e;->ahV:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 61
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/android/settings/quicklaunch/e;->Mt:I

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iput-char p2, p0, Lcom/android/settings/quicklaunch/e;->aia:C

    .line 67
    const v0, 0x7f0400ca

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/e;->setWidgetLayoutResource(I)V

    .line 68
    return-void

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public aJ(Z)V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/settings/quicklaunch/e;->aib:Z

    if-eq p1, v0, :cond_0

    .line 87
    iput-boolean p1, p0, Lcom/android/settings/quicklaunch/e;->aib:Z

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/e;->notifyChanged()V

    .line 90
    :cond_0
    return-void
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2

    .prologue
    .line 142
    instance-of v0, p1, Lcom/android/settings/quicklaunch/e;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 148
    :goto_0
    return v0

    .line 145
    :cond_0
    check-cast p1, Lcom/android/settings/quicklaunch/e;

    iget-char v0, p1, Lcom/android/settings/quicklaunch/e;->aia:C

    .line 146
    iget-char v1, p0, Lcom/android/settings/quicklaunch/e;->aia:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-char v1, p0, Lcom/android/settings/quicklaunch/e;->aia:C

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 148
    :cond_2
    iget-char v1, p0, Lcom/android/settings/quicklaunch/e;->aia:C

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/quicklaunch/e;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getShortcut()C
    .locals 1

    .prologue
    .line 71
    iget-char v0, p0, Lcom/android/settings/quicklaunch/e;->aia:C

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/settings/quicklaunch/e;->aib:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/quicklaunch/e;->ahV:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/settings/quicklaunch/e;->aib:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/quicklaunch/e;->ahU:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 106
    const v0, 0x7f1001d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    if-eqz v0, :cond_0

    .line 108
    iget-char v1, p0, Lcom/android/settings/quicklaunch/e;->aia:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    sget-object v1, Lcom/android/settings/quicklaunch/e;->ahT:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    sget-object v2, Lcom/android/settings/quicklaunch/e;->ahW:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_1

    .line 115
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/android/settings/quicklaunch/e;->ahW:Landroid/content/res/ColorStateList;

    .line 116
    sget-object v2, Lcom/android/settings/quicklaunch/e;->ahW:Landroid/content/res/ColorStateList;

    sget v3, Lcom/android/settings/quicklaunch/e;->Mt:I

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/android/settings/quicklaunch/e;->ahX:Landroid/content/res/ColorStateList;

    .line 118
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-boolean v1, p0, Lcom/android/settings/quicklaunch/e;->aib:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/settings/quicklaunch/e;->ahW:Landroid/content/res/ColorStateList;

    .line 121
    :goto_0
    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 125
    :cond_2
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    sget-object v1, Lcom/android/settings/quicklaunch/e;->ahT:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_1
    sget-object v2, Lcom/android/settings/quicklaunch/e;->ahY:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_3

    .line 129
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/android/settings/quicklaunch/e;->ahY:Landroid/content/res/ColorStateList;

    .line 130
    sget-object v2, Lcom/android/settings/quicklaunch/e;->ahY:Landroid/content/res/ColorStateList;

    sget v3, Lcom/android/settings/quicklaunch/e;->Mt:I

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/android/settings/quicklaunch/e;->ahZ:Landroid/content/res/ColorStateList;

    .line 132
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    iget-boolean v1, p0, Lcom/android/settings/quicklaunch/e;->aib:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/settings/quicklaunch/e;->ahY:Landroid/content/res/ColorStateList;

    .line 135
    :goto_1
    if-eqz v1, :cond_4

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 139
    :cond_4
    return-void

    .line 118
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 120
    :cond_5
    sget-object v1, Lcom/android/settings/quicklaunch/e;->ahX:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 132
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 134
    :cond_6
    sget-object v1, Lcom/android/settings/quicklaunch/e;->ahZ:Landroid/content/res/ColorStateList;

    goto :goto_1
.end method

.method public rn()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/settings/quicklaunch/e;->aib:Z

    return v0
.end method
