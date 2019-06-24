Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 682EC51850
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 18:21:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfRiZ-0006bP-JN; Mon, 24 Jun 2019 16:21:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hfRiY-0006bH-3X
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 16:21:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4No5pYfEQdyT4ITOBiPf9btlnaQbQRLkm39w14f8hfI=; b=d6+k0YppxFO4MD0mSeTjaGX4xe
 mNEXnOx0/GAdPi80nt2Q8ny6X2yEsTEKxrjNxl1UrMsWp2OfUwbg68o+/bJ/wZ2WG0XosDrdgjlnr
 N4IxVafNTuknBiHfC1o23XRMGFx1kJ8aQ1MHe9tO3ZwXyixkm2xxUzCmBfmy7qV8e014=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4No5pYfEQdyT4ITOBiPf9btlnaQbQRLkm39w14f8hfI=; b=fhcn49fHrBMRkU8QD6/KV4vr8a
 Ja08CaJ+s89XYXyKwAV7fbKS8bhvyn2LIl5JvGS2prBPqn61dsfoNA0d1YstMl/akorzMmd/v4K64
 UqRkrwXgIoA57lz8Qx4htmy1rwGBve8R6ArLvvb/EPSLh+pQbn7ao+A57/WLqN7uaPDc=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfRiZ-00CH8Q-VT
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 16:21:21 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 39A511504D45B;
 Mon, 24 Jun 2019 09:21:10 -0700 (PDT)
Date: Mon, 24 Jun 2019 09:21:09 -0700 (PDT)
Message-Id: <20190624.092109.2031618942295120088.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <CADvbK_dSghWbMtmpH+oMpW=0CsSU-usjQ=_nZw2qkgQ0iEuH+A@mail.gmail.com>
References: <4fd888cb669434b00dce24ace4410524665be285.1561363146.git.lucien.xin@gmail.com>
 <061d3bd2-46a2-04aa-a3f7-3091e6ff8523@gmail.com>
 <CADvbK_dSghWbMtmpH+oMpW=0CsSU-usjQ=_nZw2qkgQ0iEuH+A@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 24 Jun 2019 09:21:10 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hfRiZ-00CH8Q-VT
Subject: Re: [tipc-discussion] [PATCH net] tipc: check msg->req data len in
 tipc_nl_compat_bearer_disable
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
Cc: eric.dumazet@gmail.com, netdev@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Xin Long <lucien.xin@gmail.com>
Date: Tue, 25 Jun 2019 00:00:39 +0800

> Sorry, David, do I need to resend this one?

Yes, please, that helps me a lot.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
