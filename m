Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD5B23CF6A
	for <lists+tipc-discussion@lfdr.de>; Wed,  5 Aug 2020 21:20:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k3Oxl-0005l4-P1; Wed, 05 Aug 2020 19:20:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1k3Oxj-0005kn-JK
 for tipc-discussion@lists.sourceforge.net; Wed, 05 Aug 2020 19:20:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hwn1O0k5rlkZJ4bpazrKUThm8ItgAA0CLQX5GKiYOsc=; b=B9POLafhl3HYW2OX9E1iwOOPc4
 KbKMkYmKjKRqRVlIvg3p12m7a0ToT4NiRgS+O81MQaRLbUQS841e9Y45N7pztSucRGSLNVS8bcV5d
 om8YgFq9pPRDNPI7sQmTtoNEQT3ZLldlPzMnhZQDIRS1WPlnG+09fKigbfF5caTzPd/s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hwn1O0k5rlkZJ4bpazrKUThm8ItgAA0CLQX5GKiYOsc=; b=klqgREGszk+1QQ77UM0eJWe0he
 +wzTQiHb0Fp2GntSd5wPVLODw7w+X0fFeDt+9axCKIDg1OINXuInCUoxZpanTwN+7deC7xfE/+QCr
 BVOgRwMFpIBbNRgGsVOlpVmVv08684/UEpOXe5nCilWKmqjSYGKEWpOeFHq9TkJRlCVA=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k3Oxf-007EZp-LP
 for tipc-discussion@lists.sourceforge.net; Wed, 05 Aug 2020 19:20:31 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 85106152EECA3;
 Wed,  5 Aug 2020 12:03:35 -0700 (PDT)
Date: Wed, 05 Aug 2020 12:20:20 -0700 (PDT)
Message-Id: <20200805.122020.949302824099676691.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1596468610.git.lucien.xin@gmail.com>
References: <cover.1596468610.git.lucien.xin@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 05 Aug 2020 12:03:35 -0700 (PDT)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k3Oxf-007EZp-LP
Subject: Re: [tipc-discussion] [PATCH net 0/2] net: fix a mcast issue for
 tipc udp media
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
Cc: jon.maloy@ericsson.com, yoshfuji@linux-ipv6.org, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, kuznet@ms2.inr.ac.ru
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Xin Long <lucien.xin@gmail.com>
Date: Mon,  3 Aug 2020 23:34:45 +0800

> Patch 1 is to add a function to get the dev by source address,
> whcih will be used by Patch 2.

Series applied, thank you.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
