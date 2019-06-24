Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A08F3517C8
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 17:56:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfRKl-00088P-97; Mon, 24 Jun 2019 15:56:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hfRKj-00087z-Jo
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 15:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bACPn1leNHPbhRVpGzNqH/KnHL4auUU4cc3uk1uVcUg=; b=TcxYRJZ/wNaOHHuTIP0pQGTFgg
 ymtwSKj87JOed8qg2zASpmxt4Klb1jUdDf1ky7QCyvWngwaiU8YV1BE7zgjLdXjYT3Kj9ZqKQfno8
 Z9CWTIjHQGfqf2YB/X/Sa77pUn4Y8NguYG6pcbRir25EpGAE54SBFkOD7+Wrl+vTAF4M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bACPn1leNHPbhRVpGzNqH/KnHL4auUU4cc3uk1uVcUg=; b=NwqtHV6a/2/YTqh85DSR84bJBP
 dRr53IJeluIj2bq8D2G+PN1p3mRGEUq4rRxKoTgoAtp5hLlYgpyHT/c3+ab4ZWt29Jlq4GZ2EbJ9b
 2FVCyy3e9C+xRy3iuT/yWDRMdrMXiz2JjCV1uy3iHRXycDNkPyfa+lmnB8vG9JaadPU8=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfRKq-00BqyH-Pw
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 15:56:50 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4136715049FC5;
 Mon, 24 Jun 2019 08:56:41 -0700 (PDT)
Date: Mon, 24 Jun 2019 08:56:40 -0700 (PDT)
Message-Id: <20190624.085640.972511716347748204.davem@davemloft.net>
To: lucien.xin@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <CADvbK_dcOYbFhiiseoAou_CAELLbta585S=g2jZ249ftO3h+2w@mail.gmail.com>
References: <a4f39065f0b1cb13da2159339c08d78cb61f88d9.1561363362.git.lucien.xin@gmail.com>
 <20190624.073517.1612706351643151777.davem@davemloft.net>
 <CADvbK_dcOYbFhiiseoAou_CAELLbta585S=g2jZ249ftO3h+2w@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 24 Jun 2019 08:56:41 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hfRKq-00BqyH-Pw
Subject: Re: [tipc-discussion] [PATCH net] tipc: remove the unnecessary
 msg->req check from tipc_nl_compat_bearer_set
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 24 Jun 2019 23:54:02 +0800

> On Mon, Jun 24, 2019 at 10:35 PM David Miller <davem@davemloft.net> wrote:
>>
>> From: Xin Long <lucien.xin@gmail.com>
>> Date: Mon, 24 Jun 2019 16:02:42 +0800
>>
>> > tipc_nl_compat_bearer_set() is only called by tipc_nl_compat_link_set()
>> > which already does the check for msg->req check, so remove it from
>> > tipc_nl_compat_bearer_set(), and do the same in tipc_nl_compat_media_set().
>> >
>> > Signed-off-by: Xin Long <lucien.xin@gmail.com>
>>
>> Is this really appropriate as a fix for 'net'?  Seems more like net-next material
>> to me.
> kind of code fix, sure, you can apply it to net-next, no conflict.
> do you need me to repost?

No need to resend, applied to net-next, thanks!


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
