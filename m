Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC37989655
	for <lists+tipc-discussion@lfdr.de>; Mon, 12 Aug 2019 06:40:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hx28a-0002c5-S0; Mon, 12 Aug 2019 04:40:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hx28Z-0002bw-Fh
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Aug 2019 04:40:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=voueXJ07I6bl0P9axSnB2sBjruqLSazhw3pdcy75BrU=; b=blmPAgIajpb9Fy+61rKJAI9SA+
 Xx05dfrOhrblxP3+Wl9nHUlKuF0MiJ4GWAIwrAAW1oVgWLe3MH7/ZCLv3FiG7VaPR0VQ/xjDm+tFz
 /kaJrRinKuMT00rJ2GqwKm9t+5ygqhAgtJ9ynDFNTRr38g1o0xV5dlXNAF5Uk8rXol/0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=voueXJ07I6bl0P9axSnB2sBjruqLSazhw3pdcy75BrU=; b=l6SvTICWKdQekanZJuFtKYuM2+
 3jPSDFsFUq1N2fu04dD479OZpH2TOm6x+p7hYywvATXhatUBJ1z5EoGhizHxPdBYdEoOHhrmbjcrr
 3cEkFgexGUdFPLs/i7qnhTQH6m8e/f6bNaSVZ6h2mZt0qlD4t0iJbprJ63LYV0oxI5jk=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hx28X-000kGO-JH
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Aug 2019 04:40:51 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A3BE1145F4F52;
 Sun, 11 Aug 2019 21:40:40 -0700 (PDT)
Date: Sun, 11 Aug 2019 21:40:40 -0700 (PDT)
Message-Id: <20190811.214040.1362923590670743834.davem@davemloft.net>
To: chris.packham@alliedtelesis.co.nz
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190811201825.13876-1-chris.packham@alliedtelesis.co.nz>
References: <20190811201825.13876-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 11 Aug 2019 21:40:40 -0700 (PDT)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hx28X-000kGO-JH
Subject: Re: [tipc-discussion] [PATCH v3] tipc: initialise addr_trail_end
 when setting node addresses
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
Cc: tipc-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Chris Packham <chris.packham@alliedtelesis.co.nz>
Date: Mon, 12 Aug 2019 08:18:25 +1200

> We set the field 'addr_trial_end' to 'jiffies', instead of the current
> value 0, at the moment the node address is initialized. This guarantees
> we don't inadvertently enter an address trial period when the node
> address is explicitly set by the user.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
