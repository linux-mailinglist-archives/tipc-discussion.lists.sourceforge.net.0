Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DEFD904A
	for <lists+tipc-discussion@lfdr.de>; Wed, 16 Oct 2019 14:02:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iKi10-0007Wo-Jk; Wed, 16 Oct 2019 12:02:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iKi0y-0007WM-UY
 for tipc-discussion@lists.sourceforge.net; Wed, 16 Oct 2019 12:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UFQZ3o1FEeA/jWC9jzwsaEuxE+vUW79Vw5BNSqe3q5A=; b=QS+ati1Cf5R/fE5O4xclaQ5af0
 ChvH9qphoROSrrI2gGc+gDgRkI9dkK7ACLbIk7vL6Kjocav7SV6uyviBE5Gz4f4fwX/tJj3EFoNND
 ZNGoxvLg4fO0d/y4Bk4Difg5+X8MAkziqMTxoLhDgOQ3/VvNuIKqdZMXtqZKpXHIlPu4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UFQZ3o1FEeA/jWC9jzwsaEuxE+vUW79Vw5BNSqe3q5A=; b=bukcZewU5LjIQuJS/8k527IiIp
 OZ2exxN9MhR+KZMM7PcM2bBpFqYp2ZBfcSzgIeHBbWOZBVXrTzSyIgoP4gPHnewr9m2eRXjqy5+xv
 xNccLk2jcs7tL53zeTE6XZpJA5Eja5fvQDZMYGb8Ac1IZGLpELc+hOGsB86v0J59cqrc=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iKi0v-003mq0-JY
 for tipc-discussion@lists.sourceforge.net; Wed, 16 Oct 2019 12:02:52 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id x9GC2dwF023239
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Wed, 16 Oct 2019 05:02:39 -0700 (PDT)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 16 Oct
 2019 05:02:38 -0700
To: Jon Maloy <jon.maloy@ericsson.com>, Xin Long <lxin@redhat.com>
References: <20191002102530.6987-1-hoang.h.le@dektech.com.au>
 <CH2PR15MB3575521491DAC944A0F9F2629A9B0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <1276077941.5776644.1570706044772.JavaMail.zimbra@redhat.com>
 <CH2PR15MB3575E8584C61FC485FD995469A940@CH2PR15MB3575.namprd15.prod.outlook.com>
 <25A14D9CFAB7B34FB9440F90AFD35233013CA3252F@ALA-MBD.corp.ad.wrs.com>
 <CH2PR15MB3575F826668EEBF44BC929679A970@CH2PR15MB3575.namprd15.prod.outlook.com>
 <25A14D9CFAB7B34FB9440F90AFD35233013CA36761@ALA-MBD.corp.ad.wrs.com>
 <CH2PR15MB3575216E61D2FDF239681E659A930@CH2PR15MB3575.namprd15.prod.outlook.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <085850cc-2b8f-c4c9-c1ff-eacea2a101c1@windriver.com>
Date: Wed, 16 Oct 2019 19:50:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CH2PR15MB3575216E61D2FDF239681E659A930@CH2PR15MB3575.namprd15.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iKi0v-003mq0-JY
Subject: Re: [tipc-discussion] [net-next] tipc: improve throughput between
 nodes in netns
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 10/15/19 7:46 PM, Jon Maloy wrote:
> You must have forgot that since commit 6c9081a3915d ("add loopback device tracing") this is no problem any more.
> Of course we do the same in this case, so a trouble shooter only needs to do tcpdump on the sender's loopback interface.

Oh, the most inconvenience is gone. Please move on.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
