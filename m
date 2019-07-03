Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E115DFE3
	for <lists+tipc-discussion@lfdr.de>; Wed,  3 Jul 2019 10:34:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hiaiC-0001Uy-Sq; Wed, 03 Jul 2019 08:33:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hiaiB-0001Ug-Q6
 for tipc-discussion@lists.sourceforge.net; Wed, 03 Jul 2019 08:33:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7sk5MEKCDu5AoSt+8829lBLS1GFx9AcOW+mlQ3p4Bh0=; b=Jzwakfa5w2G/fSJ7Q38f4tFlph
 V2QKAdQiE32j8xgTLeUFS8DebPX6hp5wFXCJjykNe+9ze+nr/KsqOLrZzahjUu2Mh81Egt10VdEQ1
 7AHkKIBfiv2ws9EU09rCymyvPfDDXzGpwzYmOn766QfR1rBaGIVfFgYpvZ/wO99t+qEc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7sk5MEKCDu5AoSt+8829lBLS1GFx9AcOW+mlQ3p4Bh0=; b=cwsfgHKTp/qVLkpHXuKrw5Zvld
 GAIM6aPMMP9bKDEvva1rngn68+2wyWdF8yl77njVrZeLylvDSaHeSlQ+Ven8LUaDrnNGfuIvJH2D+
 3S1vsRisU3YqbCGFLrgdmrl3bltlELXG/VPIf+A3RSEITOSPYr/zYVNpFuNu1jg+X1Qc=;
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hiaiI-0062BR-5N
 for tipc-discussion@lists.sourceforge.net; Wed, 03 Jul 2019 08:34:03 +0000
Received: by mail-wr1-f68.google.com with SMTP id u18so1753291wru.1
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 03 Jul 2019 01:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7sk5MEKCDu5AoSt+8829lBLS1GFx9AcOW+mlQ3p4Bh0=;
 b=ir7e0TB0JEwMq6Lf2NjIKdXQJ6ZFxNW4Jv6YaVUH6yGi9u9ocgjQ/EyKdqHO6XHj5O
 bDXJ6VEMM8UzdlVxwkhhL3qmvbwywC0SzahYSLeGd4mO5Grf0E4JInVSkQEvHY4Z5CWm
 r7REMgYg8svGvrVCn6fsxkdVBqT6Oiar9N78RP4t/X22UJk6EaJOLks6EPAKFOM2E9fP
 9wcFwB57+SRh1B0Vl9jQwZg09Zc3Y/LCHajVBjIsJzHyYVDszTI/tQMjaBLocsQIE0En
 +R4ab62eH51NY168jfs2HhTjfZbH2KgMhpnndOZqlH33E6yfpz649X+pvVa/WpV3j8HN
 eW5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7sk5MEKCDu5AoSt+8829lBLS1GFx9AcOW+mlQ3p4Bh0=;
 b=Aq7G9nQkvzTDPIvA8hXKL2dQBr8oYcMplGGxGvOLqUnACv/gyxhnhKWpHEuKSCJ4oQ
 vPQJ7MIh+XGA61++eV0WFjBAEQ8w7GdXI7lyGGRfacUp/urNjSGXpcs2RCcLcnV91Bc7
 bF+0gN74ahGM1gk4D+xsnNYEvpvOe11brm3SZcmpXr99UqIqBoYR7cDaKRWM7QH5Mhq0
 x9Q8k3xx+5I6OOAAsFDBa8v6+5Lxk5BBR/O7R1rojjC9bHRmjmHVo7M9/npi/rUCiJjZ
 Z9e6Eg1/9rZO1Q5etOW7yH+R4TbN/WXDrbnXqVnw5gqLDNiznem0s2zMVTWjqqx27heq
 AcgQ==
X-Gm-Message-State: APjAAAWbChXnQkJoi3j7nssgDx2zfv18pj2fgi5IA7QRG6QxLYg9WJfR
 Brjsuuv0HgvnAMzWCvFbqdkIZlkkSZ5efauvwNk=
X-Google-Smtp-Source: APXvYqwSfvaeJXLhF4nnrBJ/J9TgMzNKmbwlQ8boNMhEyQqDtTFe719b18DKbBRyubW7/OW6KA8IBL7Xqm5zfobVMug=
X-Received: by 2002:adf:aacf:: with SMTP id i15mr17591872wrc.124.1562142835727; 
 Wed, 03 Jul 2019 01:33:55 -0700 (PDT)
MIME-Version: 1.0
References: <07e0518ac689f5919890a38634df38edf95d34a1.1562000095.git.lucien.xin@gmail.com>
 <20190702.150811.1940085234903099096.davem@davemloft.net>
In-Reply-To: <20190702.150811.1940085234903099096.davem@davemloft.net>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 3 Jul 2019 16:33:44 +0800
Message-ID: <CADvbK_emyKTg8=ye8n2ZTBx0QFK9gPL02aVDfn44DuyUTP-ofw@mail.gmail.com>
To: David Miller <davem@davemloft.net>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hiaiI-0062BR-5N
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

On Wed, Jul 3, 2019 at 6:08 AM David Miller <davem@davemloft.net> wrote:
>
> From: Xin Long <lucien.xin@gmail.com>
> Date: Tue,  2 Jul 2019 00:54:55 +0800
>
> > For these places are protected by rcu_read_lock, we change from
> > rcu_dereference_rtnl to rcu_dereference, as there is no need to
> > check if rtnl lock is held.
> >
> > For these places are protected by rtnl_lock, we change from
> > rcu_dereference_rtnl to rtnl_dereference/rcu_dereference_protected,
> > as no extra memory barriers are needed under rtnl_lock() which also
> > protects tn->bearer_list[] and dev->tipc_ptr/b->media_ptr updating.
> >
> > rcu_dereference_rtnl will be only used in the places where it could
> > be under rcu_read_lock or rtnl_lock.
> >
> > Signed-off-by: Xin Long <lucien.xin@gmail.com>
>
> In the cases where RTNL is held, even if rcu_read_lock() is also taken,
> we should use rtnl_dereference() because that avoids the READ_ONCE().
Right, that's what I did in this patch.

But for the places where it's sometimes called under rtnl_lock() only and
sometimes called under rcu_read_lock() only, like tipc_udp_is_known_peer()
and tipc_udp_rcast_add(), I kept rcu_dereference_rtnl(). makes sense?


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
