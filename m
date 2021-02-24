Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C26C1323E49
	for <lists+tipc-discussion@lfdr.de>; Wed, 24 Feb 2021 14:33:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lEuIC-0003B2-Cx; Wed, 24 Feb 2021 13:33:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lEuIB-0003Av-BL
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 13:33:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ux2PgFMXc54UkFzSenuSkNpKIFIWKptmwGOUokVUuKI=; b=mgySZ8wloLtBLvUT+Ia76ZT+JJ
 JXKdC3BZHqZOAM1Lb6xL3mhQp96WU9jAKJO03CYvDQsIBS+HFlamrE5HZpA0XdzGLi4Kxwoma5CFU
 +FgeI2txcP+N/oIoYjEe54R6T1HYl/UIsu1NN5Vu1M4StSMwME+WUiQ8IMWidftp3JOI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ux2PgFMXc54UkFzSenuSkNpKIFIWKptmwGOUokVUuKI=; b=UfWANksu6aTK84dPXURhUU17YE
 iBJrfP2wBrYDgdODOB0Q+bOsN9RNKMyRChn+AgyddYbu9Epz6MdqI7KwUS8oRx9FBUbJOSLB4HM7c
 haz+MrIedJL+s41LgRQ2inFqaxoauPh8hDZ6oBSIZHawa/5sfITIFc3WpUCWXEwujL6s=;
Received: from mail-wm1-f46.google.com ([209.85.128.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lEuI6-00032N-Ev
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 13:33:27 +0000
Received: by mail-wm1-f46.google.com with SMTP id l13so1831618wmg.5
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 24 Feb 2021 05:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ux2PgFMXc54UkFzSenuSkNpKIFIWKptmwGOUokVUuKI=;
 b=aHeCSvgquvfekL9a9okuHQegd3obc6TbnXU0gffaGxMQtGKwjcNPG1e5mU9DYGk6Zo
 6els7IHAXlpQNinQicjPD9VRJTouOiFo3AM78H2YmNlE4oyb19BFQ4a8NdIAJkp5TEZk
 PIjmgVpJLU2UtzXs5F+GSAXDt541UTtv0i/YgDkUSSImrGe2CCKce7CLF3kBxfQ2OhLY
 YLYok6A9DC1HiTxy1GoSN6gnAe5l6nB/Ay/UD+z6q+hn5NRFPfGpvwA3xTO67ZPQIQXz
 B52peq6BpiU+GeY9iP7vhp3j3OdR4TttpcQ2EeEfqhMEtL489ly4gmE/g915+ptZaYLM
 nriA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ux2PgFMXc54UkFzSenuSkNpKIFIWKptmwGOUokVUuKI=;
 b=kgquPajaqi57iyPj6JQwMtsZHSfSSq4sBRxI7l5curtcBCrw9gVRwPjfxwZlUHu8hV
 wWS+EEuXRlcN9BbHdQzNrcHL2OpPyxzf5stFMVoeipNQq8weYUfSkpPuRcORrs38GYn9
 i/lZtI5Bt3isqRtDiVqwPOTpFgJI4OYXMLmLWu8Ks6BEoFEFaGEr0mks1MXsqqMxrCVd
 +JkDtYuKP9N0Fe/1Mp6Sgj6TcuVwfmLnR0NF6xUAh8TX50kHEhco450kajy6N9jR+Kd9
 xYcSexzq1hXFWSyhyROagRf2UmHt1fcLc+FfJpoveG1QZnz6VYjv/ZmXuvPhsCbfSARP
 KJww==
X-Gm-Message-State: AOAM533Y7qcS1tPp5JKFhO6VFIylsDkRu/ZL74F+b0BvW546PUL3KSxa
 O0YFmDHJdgj3GZ+TeyQ38CIVxdYXtUpEwkM+uv8=
X-Google-Smtp-Source: ABdhPJyHi6LM2SRLi09rBvnz1dELjvUVcxmMbMmEvWQhISyF0bNxDZSK6p7hCP7IMOGkZq3UIXigUWLB2rLPlwyvGQI=
X-Received: by 2002:a1c:65d6:: with SMTP id z205mr3751446wmb.88.1614173595985; 
 Wed, 24 Feb 2021 05:33:15 -0800 (PST)
MIME-Version: 1.0
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-15-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-15-jmaloy@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 24 Feb 2021 21:33:04 +0800
Message-ID: <CADvbK_e5+f5G93QUd+acd0874EUaAQO55wK1-LPBGRSY2g_1TQ@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lEuI6-00032N-Ev
Subject: Re: [tipc-discussion] [net-next 14/16] tipc: simplify api between
 binding table and topology server
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Wed, Dec 9, 2020 at 2:51 AM <jmaloy@redhat.com> wrote:
>
> From: Jon Maloy <jmaloy@redhat.com>
>
> The function tipc_report_overlap() is called from the binding table
> with numerous parameters taken from an instance of struct publication.
> A closer look reveals that it always is safe to send along a pointer
> to the instance itself, and hence reduce the call signature. We do
> that in this commit.
>
> Signed-off-by: Jon Maloy <jmaloy@redhat.com>
> ---
>  net/tipc/name_table.c | 20 ++++++---------
>  net/tipc/subscr.c     | 57 +++++++++++++++++++++++--------------------
>  net/tipc/subscr.h     |  9 +++----
>  3 files changed, 41 insertions(+), 45 deletions(-)
>
> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> index 554a006d7c0d..4dfac3b9d26c 100644
> --- a/net/tipc/name_table.c
> +++ b/net/tipc/name_table.c
> @@ -357,9 +357,7 @@ static bool tipc_service_insert_publ(struct net *net,
>
>         /* Any subscriptions waiting for notification?  */
>         list_for_each_entry_safe(sub, tmp, &sc->subscriptions, service_list) {
> -               tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper,
> -                                       TIPC_PUBLISHED, p->sk.ref, p->sk.node,
> -                                       p->scope, first);
> +               tipc_sub_report_overlap(sub, p, TIPC_PUBLISHED, first);
>         }
>         return true;
>  err:
> @@ -451,9 +449,7 @@ static void tipc_service_subscribe(struct tipc_service *service,
>         /* Sort the publications before reporting */
>         list_sort(NULL, &publ_list, tipc_publ_sort);
>         list_for_each_entry_safe(p, tmp, &publ_list, list) {
> -               tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper,
> -                                       TIPC_PUBLISHED, p->sk.ref, p->sk.node,
> -                                       p->scope, true);
> +               tipc_sub_report_overlap(sub, p, TIPC_PUBLISHED, true);
>                 list_del_init(&p->list);
>         }
>  }
> @@ -532,9 +528,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
>         /* Notify any waiting subscriptions */
>         last = list_empty(&sr->all_publ);
>         list_for_each_entry_safe(sub, tmp, &sc->subscriptions, service_list) {
> -               tipc_sub_report_overlap(sub, ua->sr.lower, ua->sr.upper,
> -                                       TIPC_WITHDRAWN, sk->ref, sk->node,
> -                                       ua->scope, last);
> +               tipc_sub_report_overlap(sub, p, TIPC_WITHDRAWN, last);
>         }
>
>         /* Remove service range item if this was its last publication */
> @@ -543,7 +537,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
>                 kfree(sr);
>         }
>
> -       /* Delete service item if this no more publications and subscriptions */
> +       /* Delete service item if no more publications and subscriptions */
>         if (RB_EMPTY_ROOT(&sc->ranges) && list_empty(&sc->subscriptions)) {
>                 hlist_del_init_rcu(&sc->service_list);
>                 kfree_rcu(sc, rcu);
> @@ -842,7 +836,8 @@ bool tipc_nametbl_subscribe(struct tipc_subscription *sub)
>         struct tipc_uaddr ua;
>         bool res = true;
>
> -       tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type, 0, 0);
> +       tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type,
> +                  tipc_sub_read(s, seq.lower), tipc_sub_read(s, seq.upper));
>         spin_lock_bh(&tn->nametbl_lock);
>         sc = tipc_service_find(sub->net, &ua);
>         if (!sc)
> @@ -873,7 +868,8 @@ void tipc_nametbl_unsubscribe(struct tipc_subscription *sub)
>         struct tipc_service *sc;
>         struct tipc_uaddr ua;
>
> -       tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type, 0, 0);
> +       tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type,
> +                  tipc_sub_read(s, seq.lower), tipc_sub_read(s, seq.upper));
>         spin_lock_bh(&tn->nametbl_lock);
>         sc = tipc_service_find(sub->net, &ua);
>         if (!sc)
> diff --git a/net/tipc/subscr.c b/net/tipc/subscr.c
> index f6ad0005218c..feda0b6bbf1b 100644
> --- a/net/tipc/subscr.c
> +++ b/net/tipc/subscr.c
> @@ -40,18 +40,26 @@
>  #include "subscr.h"
>
>  static void tipc_sub_send_event(struct tipc_subscription *sub,
> -                               u32 found_lower, u32 found_upper,
> -                               u32 event, u32 port, u32 node)
> +                               struct publication *p,
> +                               u32 event)
>  {
> +       struct tipc_subscr *s = &sub->evt.s;
>         struct tipc_event *evt = &sub->evt;
>
>         if (sub->inactive)
>                 return;
>         tipc_evt_write(evt, event, event);
> -       tipc_evt_write(evt, found_lower, found_lower);
> -       tipc_evt_write(evt, found_upper, found_upper);
> -       tipc_evt_write(evt, port.ref, port);
> -       tipc_evt_write(evt, port.node, node);
> +       if (p) {
> +               tipc_evt_write(evt, found_lower, p->sr.lower);
> +               tipc_evt_write(evt, found_upper, p->sr.upper);
> +               tipc_evt_write(evt, port.ref, p->sk.ref);
> +               tipc_evt_write(evt, port.node, p->sk.node);
> +       } else {
> +               tipc_evt_write(evt, found_lower, s->seq.lower);
> +               tipc_evt_write(evt, found_upper, s->seq.upper);
> +               tipc_evt_write(evt, port.ref, 0);
> +               tipc_evt_write(evt, port.node, 0);
> +       }
>         tipc_topsrv_queue_evt(sub->net, sub->conid, event, evt);
>  }
>
> @@ -61,24 +69,23 @@ static void tipc_sub_send_event(struct tipc_subscription *sub,
>   * @found_lower: lower value to test
>   * @found_upper: upper value to test
>   *
> - * Return: 1 if there is overlap, otherwise 0.
> + * Returns true if there is overlap, otherwise false.
>   */
> -int tipc_sub_check_overlap(struct tipc_service_range *seq, u32 found_lower,
> -                          u32 found_upper)
> +bool tipc_sub_check_overlap(struct tipc_service_range *sr,
> +                           u32 found_lower, u32 found_upper)
This function should be changed to 'static' after its declaration is
deleted below.

>  {
> -       if (found_lower < seq->lower)
> -               found_lower = seq->lower;
> -       if (found_upper > seq->upper)
> -               found_upper = seq->upper;
> +       if (found_lower < sr->lower)
> +               found_lower = sr->lower;
> +       if (found_upper > sr->upper)
> +               found_upper = sr->upper;
>         if (found_lower > found_upper)
> -               return 0;
> -       return 1;
> +               return false;
> +       return true;
>  }
>
>  void tipc_sub_report_overlap(struct tipc_subscription *sub,
> -                            u32 found_lower, u32 found_upper,
> -                            u32 event, u32 port, u32 node,
> -                            u32 scope, int must)
> +                            struct publication *p,
> +                            u32 event, bool must)
>  {
>         struct tipc_subscr *s = &sub->evt.s;
>         u32 filter = tipc_sub_read(s, filter);
> @@ -88,29 +95,25 @@ void tipc_sub_report_overlap(struct tipc_subscription *sub,
>         seq.lower = tipc_sub_read(s, seq.lower);
>         seq.upper = tipc_sub_read(s, seq.upper);
>
> -       if (!tipc_sub_check_overlap(&seq, found_lower, found_upper))
> +       if (!tipc_sub_check_overlap(&seq, p->sr.lower, p->sr.upper))
>                 return;
> -
>         if (!must && !(filter & TIPC_SUB_PORTS))
>                 return;
> -       if (filter & TIPC_SUB_CLUSTER_SCOPE && scope == TIPC_NODE_SCOPE)
> +       if (filter & TIPC_SUB_CLUSTER_SCOPE && p->scope == TIPC_NODE_SCOPE)
>                 return;
> -       if (filter & TIPC_SUB_NODE_SCOPE && scope != TIPC_NODE_SCOPE)
> +       if (filter & TIPC_SUB_NODE_SCOPE && p->scope != TIPC_NODE_SCOPE)
>                 return;
>         spin_lock(&sub->lock);
> -       tipc_sub_send_event(sub, found_lower, found_upper,
> -                           event, port, node);
> +       tipc_sub_send_event(sub, p, event);
>         spin_unlock(&sub->lock);
>  }
>
>  static void tipc_sub_timeout(struct timer_list *t)
>  {
>         struct tipc_subscription *sub = from_timer(sub, t, timer);
> -       struct tipc_subscr *s = &sub->evt.s;
>
>         spin_lock(&sub->lock);
> -       tipc_sub_send_event(sub, s->seq.lower, s->seq.upper,
> -                           TIPC_SUBSCR_TIMEOUT, 0, 0);
> +       tipc_sub_send_event(sub, NULL, TIPC_SUBSCR_TIMEOUT);
>         sub->inactive = true;
>         spin_unlock(&sub->lock);
>  }
> diff --git a/net/tipc/subscr.h b/net/tipc/subscr.h
> index 3ded27391d54..5fce2e13fc1a 100644
> --- a/net/tipc/subscr.h
> +++ b/net/tipc/subscr.h
> @@ -43,6 +43,7 @@
>  #define TIPC_MAX_SUBSCR         65535
>  #define TIPC_MAX_PUBL           65535
>
> +struct publication;
>  struct tipc_subscription;
>  struct tipc_conn;
>
> @@ -74,13 +75,9 @@ struct tipc_subscription *tipc_sub_subscribe(struct net *net,
>                                              struct tipc_subscr *s,
>                                              int conid);
>  void tipc_sub_unsubscribe(struct tipc_subscription *sub);
> -
> -int tipc_sub_check_overlap(struct tipc_service_range *seq,
> -                          u32 found_lower, u32 found_upper);
>  void tipc_sub_report_overlap(struct tipc_subscription *sub,
> -                            u32 found_lower, u32 found_upper,
> -                            u32 event, u32 port, u32 node,
> -                            u32 scope, int must);
> +                            struct publication *p,
> +                            u32 event, bool must);
>
>  int __net_init tipc_topsrv_init_net(struct net *net);
>  void __net_exit tipc_topsrv_exit_net(struct net *net);
> --
> 2.28.0
>
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
