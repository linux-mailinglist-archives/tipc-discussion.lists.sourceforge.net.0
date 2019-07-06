Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 997AA60F45
	for <lists+tipc-discussion@lfdr.de>; Sat,  6 Jul 2019 08:49:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hjeV6-0006x9-OY; Sat, 06 Jul 2019 06:48:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hjeV5-0006wx-Ev
 for tipc-discussion@lists.sourceforge.net; Sat, 06 Jul 2019 06:48:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PkY22paQafH7ovcei4w38Csq5vJvhM1OVUCaK/orVRc=; b=jnRBiOM62k46lDnH2l7Hc6KDEV
 HA/kWph4dWVnhFuPe5Uivo9TLwg+ZFm+qghViTJGjV/0RUMNqzMVZpONmrx3Tw1g6q193h08tM8LU
 JBfDK4dv3pqS8YBMpH7oZjrnEMk16ycd7VfdEbUOaBZJJLJdZR4j4y3/yNn31+HPsHfA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PkY22paQafH7ovcei4w38Csq5vJvhM1OVUCaK/orVRc=; b=JSxcn0VI0QCVjAOHO0Nm+7o31Z
 9P7Rk/iZrrfkt5sWTH96v77dXyXf/xtoXjh99qw+YxNqo5KmVvyktJleKWqZoGJCuMJO+RWgAeLnl
 s6ONtWGzHnJmWK2z6SfhhlFmgVnqqC+2z1QIvTkZ0iSKDaoGO0UxoejINKNeElUtk9VM=;
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hjeVO-009Ey3-5p
 for tipc-discussion@lists.sourceforge.net; Sat, 06 Jul 2019 06:49:07 +0000
Received: by mail-wm1-f65.google.com with SMTP id s3so11042629wms.2
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 05 Jul 2019 23:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PkY22paQafH7ovcei4w38Csq5vJvhM1OVUCaK/orVRc=;
 b=SLvvjHnNUEubxPjGPWCzDLPzDzHpJTQpg9fTMmwaX0Z1+5gAl7lZjXbjUWfxwykduP
 nE3MPburXOoIk6Zzd+1j1mbCGbwb5kD2OTxROcQSsJ6JR3ReAOR/+VA2JF1fLBnQQpYp
 XWHoonJt4DhQt683d5mK47G2WumCJ6Z5l8dpWPM/kYW6NCyXWpsrhWSCFnBKI9T1sW7v
 70rSCcxgITsLNpXLw6f7PBWb5rXEHV1Fm433HkNASGqVhhqRdEnqFkfVgbqejUOSCx9u
 5ZkBJyDZPZcfRbGMHl/hSEvpR2uuio+aXYOITp6Lw6HWunoaZ1VlcRCxS2YJ5d9+aijY
 RLgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PkY22paQafH7ovcei4w38Csq5vJvhM1OVUCaK/orVRc=;
 b=hWFP6X4HcUCYDnyQHE8pZtWc2A0qzc4+WACOdQCSf9/EpBqhfftiMAKjAN+sDZ9T7W
 /a14t4P/tHDukJF7ByV4bm1h6zYv2tYeRKYc1bCBz0Yc9xzcv1bqCKMBK1ISt3JRG2Kx
 PesDebSu/5MgXrxIr6bHowOA+PdsY7s6humi8oD1zoLsk0YdIcI/HB5be8dOYlWt5Vaa
 pBgSkv5SUH6kMSkmkpROX2zIgjJ9xW+UEckNI10BGSreZ+y2zaxsNN2RJggA9UFMZ19J
 RV0wHrc/4WE3jcLHQtlNs881tyxMm2LXXXxuxURwAr0jCc0HjU5z6vsICVCP/4zFBsDk
 pqXA==
X-Gm-Message-State: APjAAAUJzlZ4gYtIdBwffFbVGcip9KumSk2Z4zlnVWOE6DhxutQuZt2R
 TZzNbF+k+U2qJaSBYwHtspZ99ydXRHbYiSUm+XQ=
X-Google-Smtp-Source: APXvYqyZ9ybCCfZsU9WLN3bjf4WXABH/jeGvr5DsnVGu7DZURZ3VCvx30quB3qOFe82fdFKppr038Xlcv4kHgQvD910=
X-Received: by 2002:a1c:1bd7:: with SMTP id b206mr2047553wmb.85.1562395739710; 
 Fri, 05 Jul 2019 23:48:59 -0700 (PDT)
MIME-Version: 1.0
References: <07e0518ac689f5919890a38634df38edf95d34a1.1562000095.git.lucien.xin@gmail.com>
 <20190702.150811.1940085234903099096.davem@davemloft.net>
 <CADvbK_emyKTg8=ye8n2ZTBx0QFK9gPL02aVDfn44DuyUTP-ofw@mail.gmail.com>
In-Reply-To: <CADvbK_emyKTg8=ye8n2ZTBx0QFK9gPL02aVDfn44DuyUTP-ofw@mail.gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Sat, 6 Jul 2019 14:48:48 +0800
Message-ID: <CADvbK_eDnUMSaoT65hco2PF5-f1PO=CKBeMPz3sTRZvg5qKGVA@mail.gmail.com>
To: David Miller <davem@davemloft.net>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hjeVO-009Ey3-5p
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: use rcu dereference
 functions properly
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
Cc: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Wed, Jul 3, 2019 at 4:33 PM Xin Long <lucien.xin@gmail.com> wrote:
>
> On Wed, Jul 3, 2019 at 6:08 AM David Miller <davem@davemloft.net> wrote:
> >
> > From: Xin Long <lucien.xin@gmail.com>
> > Date: Tue,  2 Jul 2019 00:54:55 +0800
> >
> > > For these places are protected by rcu_read_lock, we change from
> > > rcu_dereference_rtnl to rcu_dereference, as there is no need to
> > > check if rtnl lock is held.
> > >
> > > For these places are protected by rtnl_lock, we change from
> > > rcu_dereference_rtnl to rtnl_dereference/rcu_dereference_protected,
> > > as no extra memory barriers are needed under rtnl_lock() which also
> > > protects tn->bearer_list[] and dev->tipc_ptr/b->media_ptr updating.
> > >
> > > rcu_dereference_rtnl will be only used in the places where it could
> > > be under rcu_read_lock or rtnl_lock.
> > >
> > > Signed-off-by: Xin Long <lucien.xin@gmail.com>
> >
> > In the cases where RTNL is held, even if rcu_read_lock() is also taken,
> > we should use rtnl_dereference() because that avoids the READ_ONCE().
> Right, that's what I did in this patch.
>
> But for the places where it's sometimes called under rtnl_lock() only and
> sometimes called under rcu_read_lock() only, like tipc_udp_is_known_peer()
> and tipc_udp_rcast_add(), I kept rcu_dereference_rtnl(). makes sense?
Hi, David, I saw this patch in "Changes Requested".

I've checked all places with this patch, no function calling rcu_dereference()
and rcu_dereference_rtnl() will be ONLY called under rtnl_lock() protection.
So I can't see a problem with it.

Do I need to resend?


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
