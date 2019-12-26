Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E792812AADD
	for <lists+tipc-discussion@lfdr.de>; Thu, 26 Dec 2019 09:08:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ikOC2-0005tY-Vv; Thu, 26 Dec 2019 08:08:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1ikOBw-0005sD-UQ
 for tipc-discussion@lists.sourceforge.net; Thu, 26 Dec 2019 08:08:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U9E/XXBMxNfZCuBMM1pQ7aiUYlJYzNkCgP4qBHkRB5w=; b=P4xpOZxD9fH4twH1t1OKlEwLlW
 zRuhRNSmZZSagW0vQXKxKXBNDposJVlS/Ue+yS/PyMj0DS6czSWn8RW9rxZYpcUVF8YQjluaMnS3w
 TJPP/imVfNv7C5/KLzGKwJOLwgGgRuu+0jlo/yzLkhmYqjU/WFH/xXx8IMhBmSYUJbu4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U9E/XXBMxNfZCuBMM1pQ7aiUYlJYzNkCgP4qBHkRB5w=; b=Zp5AJ3pmRX3sOc84JwfEoBq2oQ
 /R/zLJ9xKoKTzowFRzod3n/eAHeKiiaxzR5w4XehoH6sfaEH8uMjTq//d/WmGeRByfOatc8mT2bOk
 ciYo/7B2tSnsKl0VB/NCJQ6eHGyCxYheZcjxVim1XNDFUse7wafyoO9d0D1arTA/P3I0=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1ikOBv-00FLaA-22
 for tipc-discussion@lists.sourceforge.net; Thu, 26 Dec 2019 08:08:20 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xBQ880Fm001884
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Thu, 26 Dec 2019 00:08:00 -0800 (PST)
Received: from [128.224.155.99] (128.224.155.99) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 26 Dec
 2019 00:08:00 -0800
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191224080551.28379-1-tuong.t.lien@dektech.com.au>
 <25A14D9CFAB7B34FB9440F90AFD35233013CB15029@ALA-MBD.corp.ad.wrs.com>
 <07f501d5bb88$6eba09d0$4c2e1d70$@dektech.com.au>
 <5061b76c-652d-1d92-1528-9934d947a112@windriver.com>
 <086501d5bbbc$676e8640$364b92c0$@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <f93eecc7-9fff-5bab-61b4-5bfd6d55cb7b@windriver.com>
Date: Thu, 26 Dec 2019 15:54:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <086501d5bbbc$676e8640$364b92c0$@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.99]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1ikOBv-00FLaA-22
Subject: Re: [tipc-discussion] [net] tipc: fix wrong connect() return code
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 12/26/19 3:16 PM, Tuong Lien Tong wrote:
> Sorry, my mistake! I thought it was "while (!done || !sk->sk_err)"...
> But, this is really confusing and one might ask why we continue the loop while the socket has encountered an error (sk-> sk_err! = 0)???

This is totally reasonable because it can make code simpler.

> Moreover, it's not necessarily the "sk_err" will be the only case,
> For example:
> 	sk->sk_state != TIPC_CONNECTING but sk->sk_err = 0 (somehow) and a pending/interrupt signal

If sk->sk_state is changed from TIPC_CONNECTING to TIPC_ESTABLISHED,
sk->sk_err should be kept 0, but if sk->sk_state is changed to other
states, sk->sk_err must be set with a proper error code in socket
receive path, otherwise, it's a bug.

However, there might be one below race condition:

sk->sk_state is set to TIPC_DISCONNECTING, but before sk->sk_err is set
with an error code, the process who calls connect() is woken up by one
single. Even so, the process is still blocked when it tries to hold sock
lock with lock_sock() in sk_wait_event() because the socket lock is
taken in socket receive path. After socket lock is released, the process
will continue being run. But at that moment, sk->sk_err has been set
with an error code. So, this is no problem for us.

> 
> then we should return '-EINTR'?


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
